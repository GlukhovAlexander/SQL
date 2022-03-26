use lab10
go

-- запрос без создания индексов

SET STATISTICS IO ON
SET STATISTICS TIME ON
select cust.CompanyName, cust.city, ord.ShipName, ord.EmployeeID
from customers as cust join orders as ord on cust.CustomerID = ord.CustomerID
where cust.country = 'USA'
and ord.shipcountry = 'USA'
and ord.OrderDate between '19970923' and '19990730'
SET STATISTICS IO OFF
SET STATISTICS TIME OFF

-- создадим индекс для этих таблиц и выполним тот же запрос

create clustered index cust_clust on customers(country, customerID)
create clustered index ord_clust on orders(customerID)
create nonclustered index ord_nonclust on orders(shipcountry, orderdate) include (ShipName, EmployeeID)

SET STATISTICS IO ON
SET STATISTICS TIME ON
select cust.CompanyName, cust.city, ord.ShipName, ord.EmployeeID
from customers as cust inner join orders as ord on cust.CustomerID = ord.CustomerID
where cust.country = 'USA'
and ord.shipcountry = 'USA'
and ord.OrderDate between '19970923' and '19990730'
SET STATISTICS IO OFF
SET STATISTICS TIME OFF

drop index cust_clust on customers
drop index ord_clust on orders
drop index ord_nonclust on orders
