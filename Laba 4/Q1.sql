--������� ��������� �� ������ � ������������� ������ 3 �����
USE TV_journalism

SELECT REPORTS.Duration, REPORTS.Name
FROM REPORTS
JOIN EVENT ON REPORTS.Event_ID = EVENT.Event_ID
JOIN CITY ON EVENT.�ity_ID = CITY.�ity_ID
JOIN COUNTRY ON CITY.�ountry_ID = COUNTRY.Country_ID
WHERE  COUNTRY.Name = '���������� ���������'
AND REPORTS.Duration between '00:00:00.000' and '00:03:00.000'