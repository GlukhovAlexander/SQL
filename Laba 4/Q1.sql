--Выбрать репортажи из России с длительностью меньше 3 минут
USE TV_journalism

SELECT REPORTS.Duration, REPORTS.Name
FROM REPORTS
JOIN EVENT ON REPORTS.Event_ID = EVENT.Event_ID
JOIN CITY ON EVENT.Сity_ID = CITY.Сity_ID
JOIN COUNTRY ON CITY.Сountry_ID = COUNTRY.Country_ID
WHERE  COUNTRY.Name = 'Российская федерация'
AND REPORTS.Duration between '00:00:00.000' and '00:03:00.000'