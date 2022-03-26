--Специфика, количество корреспондентов с этой спецификой, их средняя зарплата, среднее время в выпусках новостей.

USE TV_journalism
GO

IF OBJECT_ID ('Reporters_spec ', 'V') IS NOT NULL  
DROP VIEW Reporters_spec
GO


CREATE VIEW Reporters_spec AS  
SELECT SPECIALIZATION.Spec_Name, COUNT(EMPLOYEE.Employee_ID) AS Reporters_quant, AVG(EMPLOYEE.Salary) AS AVG_Salary,
DATEADD(s,ROUND(AVG(CAST(DATEPART(MINUTE, REPORTS.Duration)*60 +
DATEPART(SECOND, REPORTS.Duration) AS float)),2), CAST('00:00:00' as time)) as 'AVG Duation'
FROM  SPECIALIZATION
JOIN EMPLOYEE ON EMPLOYEE.Spec_ID = SPECIALIZATION.Spec_ID
JOIN REPORT_REPORTER ON EMPLOYEE.Employee_ID = REPORT_REPORTER.Reporter_ID
JOIN REPORTS ON REPORT_REPORTER.Report_ID = REPORTS.Report_ID
JOIN REPORTS_SHOW ON REPORTS_SHOW.Report_ID = REPORTS.Report_ID
JOIN SHOW ON SHOW.SHOW_ID = REPORTS_SHOW.Show_ID 
GROUP BY SPECIALIZATION.Spec_Name
 GO

 SELECT * FROM Reporters_spec

--Вывести специфику, на которую уходит наибольшее количество средств


SELECT TOP(1) Reporters_spec.Spec_Name, Reporters_quant*AVG_Salary AS Sum_money  FROM Reporters_spec
ORDER BY Sum_money desc
