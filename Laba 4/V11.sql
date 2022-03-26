--Выбрать список репортажей из 'Москвы' за год, корреспондента, их представляющего и время репортажа.

SELECT REPORTS.NAME, FIRST_NAME, MIDDLE_NAME, LAST_NAME, CITY.name, Duration
FROM EMPLOYEE
JOIN REPORT_REPORTER ON REPORT_REPORTER.Reporter_ID = EMPLOYEE.Employee_ID
JOIN REPORTS ON REPORT_REPORTER.Report_ID = REPORTS.Report_ID
JOIN EVENT ON REPORTS.Event_ID = EVENT.Event_ID
JOIN CITY ON EVENT.Сity_ID = CITY.Сity_ID
WHERE 
CITY.name ='Москва'
and (YEAR(REPORTS.Date) = 2020)