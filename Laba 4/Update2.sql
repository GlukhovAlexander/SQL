--�������� ����� ��������� ����� ���������� ������� (� ������ �� ���-��������)
USE TV_journalism

UPDATE EMPLOYEE
SET EMPLOYEE.City_ID = CITY.�ity_ID
FROM CITY
WHERE EMPLOYEE.First_Name = '�����'
AND EMPLOYEE.Middle_Name = '����������'
AND EMPLOYEE.Last_Name = '�������'
AND CITY.name = '���-��������'

SELECT * FROM EMPLOYEE
join CITY ON CITY.�ity_ID = EMPLOYEE.City_ID
ORDER BY CITY.name