--��� ������� ������ ������� ���������� ������� � �� ������������, ������� ������������ ���������� � ���������� ���������� � �� ������

SELECT CITY.name,Count(DISTINCT EVENT.Event_ID) AS '���������� �������',
CAST(CAST(AVG(CAST(CAST(REPORTS.Duration as datetime) as float)) as datetime) as time) AS '������� ������������ ����������', 
COUNT(REPORTS.REPORT_ID) AS '���������� ����������'
FROM EVENT
JOIN CITY ON EVENT.�ity_ID = CITY.�ity_ID
JOIN REPORTS ON REPORTS.Event_ID= EVENT.Event_ID
GROUP BY CITY.name