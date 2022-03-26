--Удалить видеоролики, использовавшиеся в рекламе, заказ на которую закончился в 2019 году или ранее


DELETE FROM VIDEO 
FROM  VIDEO JOIN ORDER_AD ON (ORDER_AD.Video_ID = VIDEO.Video_ID)
WHERE 
YEAR(ORDER_AD.End_Date) < 2020

SELECT VIDEO.Video_ID, ADVERTISER.Name, ORDER_AD.End_Date
FROM ORDER_AD
JOIN VIDEO ON (ORDER_AD.Video_ID = VIDEO.Video_ID)
JOIN ADVERTISER ON ADVERTISER.Advertiser_ID = ORDER_AD.Advertiser_ID
ORDER BY ORDER_AD.Video_ID
