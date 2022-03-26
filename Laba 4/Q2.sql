--для каждого города вывести количество событий в нём произошедших, среднюю длительность репортажей и количество репортажей в нём снятых

SELECT CITY.name,Count(DISTINCT EVENT.Event_ID) AS 'Количество событий',
CAST(CAST(AVG(CAST(CAST(REPORTS.Duration as datetime) as float)) as datetime) as time) AS 'Средняя длительность репортажей', 
COUNT(REPORTS.REPORT_ID) AS 'Количество репортажей'
FROM EVENT
JOIN CITY ON EVENT.Сity_ID = CITY.Сity_ID
JOIN REPORTS ON REPORTS.Event_ID= EVENT.Event_ID
GROUP BY CITY.name