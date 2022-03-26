-- орреспондент, специфика, средн€€ степень опасности сюжетов, количество сюжетов в мес€ц.

USE TV_journalism
GO

IF OBJECT_ID ('Reporters_view ', 'V') IS NOT NULL  
DROP VIEW Reporters_view
GO


CREATE VIEW Reporters_view AS  
SELECT EMPLOYEE.First_Name, EMPLOYEE.Middle_Name, EMPLOYEE.Last_Name, SPECIALIZATION.Spec_Name,
 CAST(COUNT(REPORTS.Name) AS float)/CAST(COUNT(DISTINCT MONTH(REPORTS.Date)) AS float) AS Amount_of_Reports, AVG(CAST(EVENT.Danger AS float)) AS Danger_ID
FROM EMPLOYEE 
 JOIN REPORT_REPORTER ON REPORT_REPORTER.Reporter_ID = EMPLOYEE.Employee_ID
 JOIN REPORTS ON REPORTS.Report_ID = REPORT_REPORTER.Report_ID
 JOIN EVENT ON EVENT.Event_ID = REPORTS.Event_ID
 JOIN SPECIALIZATION ON SPECIALIZATION.Spec_ID = EMPLOYEE.Spec_ID
 
 GROUP BY First_Name, Last_Name, Middle_Name, SPECIALIZATION.Spec_Name
 GO

-- Query the view  
SELECT *
FROM Reporters_view 
GO

--¬ывести всех репортЄров, делающих более 1 репортажа в мес€ц, сюжеты которых могут быть на тему "ќбщество" и иметь среднюю/высокую степень опасности
SELECT First_Name, Middle_name, Last_Name FROM Reporters_view
WHERE Spec_Name LIKE '%ќбщество%' AND Amount_of_Reports > 1 AND  Danger_ID < 3;


