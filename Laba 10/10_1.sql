use lab10
go

-- Запрос без создания индексов

SET STATISTICS IO ON
SET STATISTICS TIME ON
select CompanyName, [Address], City from customers
where CustomerID between 'C' and 'M'
and country between 'P' and 'V'
and city between 'B' and 'Y'
SET STATISTICS IO OFF
SET STATISTICS TIME OFF

-- Создадим некластеризованный индекс для таблицы customers_index и выполним тот же запрос
create nonclustered index cust_nonclust on Customers(country, city, customerID) include (CompanyName, [Address])

SET STATISTICS IO ON
SET STATISTICS TIME ON
select CompanyName, [Address], City from customers
where CustomerID between 'C' and 'M'
and country between 'S' and 'V'
and city between 'B' and 'Y'
SET STATISTICS IO OFF
SET STATISTICS TIME OFF

drop index cust_nonclust on customers