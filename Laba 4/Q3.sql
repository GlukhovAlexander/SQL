--Выбрать репортажи, снятые не ранее прошлого года, которые не показывали ни в одной телепередаче и изображения для них

WITH CTE(REPORT_ID, IMAGE_DESC)
AS (SELECT REPORTS.Report_ID, IMAGE.Description
FROM REPORTS_IMAGE
JOIN REPORTS ON REPORTS_IMAGE.Report_ID = REPORTS.Report_ID
JOIN IMAGE ON REPORTS_IMAGE.Image_ID = IMAGE.Image_ID)


SELECT REPORTS.Name, CTE.IMAGE_DESC
FROM REPORTS
left join REPORTS_SHOW ON REPORTS.Report_ID = REPORTS_SHOW.Report_ID
LEFT JOIN CTE ON REPORTS.REPORT_ID = CTE.REPORT_ID
WHERE Show_ID IS NULL

