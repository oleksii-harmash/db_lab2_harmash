-- 1. Відсортувати кількість проданого алкоголю в літрах за містами
SELECT city, (volume * quantity) AS total_volume¶
FROM store_location
JOIN store USING(zip_code)
JOIN sale USING(store_name)
JOIN details USING(invoice)
ORDER BY volume DESC

-- 2. Знайти опис тих товарів, ціни за одиницю яких, більші за середнє значення відповідного поля та вивести магазини в якому вони були продані
SELECT store_name, item_desc, retail
FROM sale
JOIN details USING(invoice)
JOIN description USING(item_num)
WHERE retail > (SELECT AVG(retail) FROM details)

-- 3. Відсортувати сумарні продажі за часом
SELECT (quantity * retail) AS total_retail, sale_date
FROM sale
JOIN details USING(invoice)
ORDER BY sale_date