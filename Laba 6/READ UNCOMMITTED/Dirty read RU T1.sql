--"�������" ������. ���������� �1. ������� �������� "READ UNCOMMITTED"
USE TV_journalism
GO

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION 
SELECT * 
FROM EMPLOYEE
WHERE EMPLOYEE.Employee_ID = '1'

SELECT * 
FROM EMPLOYEE
WHERE EMPLOYEE.Employee_ID = '1'

SELECT * 
FROM EMPLOYEE
WHERE EMPLOYEE.Employee_ID = '1'
COMMIT