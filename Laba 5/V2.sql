--Месяц, город, количество репортажей из этой страны в месяц, средняя продолжительность репортажа, основной корреспондент.

USE TV_journalism
GO

IF OBJECT_ID ('Reports_city ', 'V') IS NOT NULL  
DROP VIEW Reports_city
GO



CREATE VIEW Reports_city AS 
WITH C1 AS
(
SELECT DATENAME(M,REPORTS.Date) AS CMonth, YEAR(REPORTS.Date) AS CYear, COUNTRY.Country_ID, COUNT(*) AS CRep_num 
FROM REPORTS
	JOIN EVENT ON EVENT.Event_ID = REPORTS.Event_ID
	JOIN CITY ON CITY.Сity_ID = EVENT.Сity_ID
	JOIN COUNTRY ON COUNTRY.Country_ID = CITY.Сountry_ID
	GROUP BY DATENAME(M,REPORTS.Date), YEAR(REPORTS.Date), COUNTRY.Country_ID
	),
DF AS
(
SELECT DATENAME(M,REPORTS.Date) AS Month, YEAR(REPORTS.Date) AS Year, CITY.name, EMPLOYEE.First_Name, 
EMPLOYEE.Middle_Name, EMPLOYEE.Last_Name, COUNT(*) AS CNT FROM EMPLOYEE
	JOIN REPORT_REPORTER ON EMPLOYEE.Employee_ID = REPORT_REPORTER.Reporter_ID
	JOIN REPORTS ON REPORT_REPORTER.Report_ID = REPORTS.Report_ID
	JOIN EVENT ON EVENT.Event_ID = REPORTS.Event_ID
	JOIN CITY ON CITY.Сity_ID = EVENT.Сity_ID
	GROUP BY DATENAME(M,REPORTS.Date), YEAR(REPORTS.Date), CITY.name, EMPLOYEE.First_Name,EMPLOYEE.Middle_Name, EMPLOYEE.Last_Name
	)

SELECT TOP 1 WITH TIES DATENAME(M,REPORTS.Date) AS Month, YEAR(REPORTS.Date) AS Year, CITY.name as City,
C1.CRep_num as Rep_num,
DATEADD(s, AVG ((DATEPART(MINUTE, REPORTS.Duration))*60 + DATEPART(SECOND, REPORTS.Duration)), CAST('00:00:00' as time)) as 'AVG_Time',  
	DF.First_Name, DF.Middle_Name,DF.Last_Name
FROM  REPORTS
JOIN EVENT ON EVENT.Event_ID = REPORTS.Event_ID
JOIN CITY ON CITY.Сity_ID = EVENT.Сity_ID
JOIN COUNTRY ON COUNTRY.Country_ID = CITY.Сountry_ID
JOIN REPORT_REPORTER ON REPORT_REPORTER.Report_ID = REPORTS.Report_ID
JOIN EMPLOYEE ON EMPLOYEE.Employee_ID = REPORT_REPORTER.Reporter_ID
JOIN DF ON (CITY.name = DF.name) AND (DATENAME(M,REPORTS.Date) = DF.Month) AND (YEAR(REPORTS.Date) = DF.Year)
JOIN C1 ON (COUNTRY.Country_ID = C1.Country_ID) AND (DATENAME(M,REPORTS.Date) = C1.CMonth) AND (YEAR(REPORTS.Date) = C1.CYear)
GROUP BY DATENAME(M,REPORTS.Date), YEAR(REPORTS.Date), CITY.name, DF.First_Name,DF.Middle_Name,DF.Last_Name, DF.CNT, C1.CRep_num
ORDER BY RANK() OVER(PARTITION BY DATENAME(M,REPORTS.Date), YEAR(REPORTS.Date), CITY.name ORDER BY CNT DESC)
 GO

 SELECT * FROM Reports_city
 order by city
 GO 
--Вывести наиболее богатый на репортажи месяц для каждой из стран, город, репортажи из которого имели суммарно самую большую длину и основного репортёра
WITH T1 AS
(
SELECT Reports_city.City,  MAX(Reports_city.Rep_num) AS MX FROM Reports_city
GROUP BY City
)

SELECT Reports_city.Month,Reports_city.Year, Reports_city.City, First_Name, Middle_Name,Last_Name FROM Reports_city
JOIN T1 ON (Reports_city.City = T1.City) 
WHERE Reports_city.Rep_num = T1.MX