--������� ������ ���������� �� '������' �� ���, ��������������, �� ��������������� � ����� ���������.

SELECT REPORTS.NAME, FIRST_NAME, MIDDLE_NAME, LAST_NAME, CITY.name, Duration
FROM EMPLOYEE
JOIN REPORT_REPORTER ON REPORT_REPORTER.Reporter_ID = EMPLOYEE.Employee_ID
JOIN REPORTS ON REPORT_REPORTER.Report_ID = REPORTS.Report_ID
JOIN EVENT ON REPORTS.Event_ID = EVENT.Event_ID
JOIN CITY ON EVENT.�ity_ID = CITY.�ity_ID
WHERE 
CITY.name ='������'
and (YEAR(REPORTS.Date) = 2020)