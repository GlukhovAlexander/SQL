--Обновить город репортера Павел Тимофеевич Новиков (с Чикаго на Лос-Анджелес)
USE TV_journalism

UPDATE EMPLOYEE
SET EMPLOYEE.City_ID = CITY.Сity_ID
FROM CITY
WHERE EMPLOYEE.First_Name = 'Павел'
AND EMPLOYEE.Middle_Name = 'Тимофеевич'
AND EMPLOYEE.Last_Name = 'Новиков'
AND CITY.name = 'Лос-Анджелес'

SELECT * FROM EMPLOYEE
join CITY ON CITY.Сity_ID = EMPLOYEE.City_ID
ORDER BY CITY.name