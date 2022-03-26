--Заменить дату начала рекламного контракта с рекламодателем 1 с 2000-01-01 на 2005-01-01
USE TV_journalism



UPDATE ORDER_AD
SET Start_date = '2000-01-01'
WHERE Advertiser_ID = 1
AND Show_ID = 1
AND Start_date = '2005-01-01'

