--Корреспонденты, зарплата которых больше 2000, Специфика

USE TV_journalism
GO

IF OBJECT_ID ('Reporters_spec ', 'V') IS NOT NULL  
DROP VIEW Reporters_spec
GO


CREATE VIEW Reporters_spec AS  
SELECT SPECIALIZATION.Spec_Name, EMPLOYEE.Last_Name, EMPLOYEE.Salary
FROM  SPECIALIZATION
JOIN EMPLOYEE ON EMPLOYEE.Spec_ID = SPECIALIZATION.Spec_ID
JOIN JOB ON JOB.Job_ID = EMPLOYEE.Job_ID
WHERE Salary > 2000 AND Job_Name = 'Репортер'

 GO

SELECT * FROM Reporters_spec
