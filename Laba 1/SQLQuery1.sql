SELECT PRODUCT.description, SUM(ITEM.total) AS sales_volume
FROM PRODUCT
JOIN ITEM ON (PRODUCT.product_id = ITEM.product_id)
WHERE PRODUCT.description LIKE '%WIFF%'
GROUP BY PRODUCT.description 