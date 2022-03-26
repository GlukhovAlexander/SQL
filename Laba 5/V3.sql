--Список корреспондентов, время выпуска новостей, дата, длительность сюжета этого корреспондента в этом выпуске.

USE TV_journalism
GO

IF OBJECT_ID ('Reports_news ', 'V') IS NOT NULL  
DROP VIEW Reports_news
GO


CREATE VIEW Reports_news AS  
SELECT EMPLOYEE.First_Name,EMPLOYEE.Middle_Name,EMPLOYEE.Last_Name, REPORTS_SHOW.Date, 
DATEADD(s, SUM(DATEPART(MINUTE, REPORTS.Duration)*60 + DATEPART(SECOND, REPORTS.Duration)),CAST('00:00:00' as time)) as 'Duation'
FROM  EMPLOYEE
JOIN REPORT_REPORTER ON EMPLOYEE.Employee_ID = REPORT_REPORTER.Reporter_ID
JOIN REPORTS ON REPORT_REPORTER.Report_ID = REPORTS.Report_ID
JOIN REPORTS_SHOW ON REPORTS_SHOW.Report_ID = REPORTS.Report_ID
JOIN SHOW ON SHOW.SHOW_ID = REPORTS_SHOW.Show_ID
WHERE SHOW.Name = 'Новости' or SHOW.Name = 'Вести'
 
 GROUP BY EMPLOYEE.First_Name,EMPLOYEE.Middle_Name,EMPLOYEE.Last_Name, REPORTS_SHOW.Date
 GO

 SELECT * FROM Reports_news
 GO
 --Вывести репортёров, выпускавших сюжеты в последние 2 месяца репортёров и их самый длинный репортаж 
 
 WITH MX AS
 (
 SELECT MAX(DATEPART(MINUTE, Reports_news.Duation)*60 + DATEPART(SECOND, Reports_news.Duation)) AS MXDUR, Reports_news.Last_Name
 FROM Reports_news
 GROUP BY Reports_news.Last_Name

 )


SELECT DISTINCT Reports_news.First_Name, Reports_news.Middle_Name, Reports_news.Last_Name,
DATEADD(s, MX.MXDUR,CAST('00:00:00' as time)) AS Max_Dur FROM Reports_news
JOIN MX ON MX.Last_Name = Reports_news.Last_Name
WHERE DATEPART(MONTH,Reports_news.Date) - DATEPART(MONTH,GETDATE()) <= 2