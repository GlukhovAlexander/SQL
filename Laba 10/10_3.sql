use lab10
go

-- запрос без создания индексов

SET STATISTICS IO ON
SET STATISTICS TIME ON
select prod.ProductName, orddet.discount, ord.orderdate, cust.companyName
from products as prod
join orderdetails as orddet on orddet.productID = prod.productID
join orders as ord on ord.orderID = orddet.orderID
join customers as cust on ord.customerID = cust.customerID
where cust.country = 'USA'
and ord.orderdate between '19950923' and '19980730'
and orddet.quantity >= 5
and prod.unitprice >= 10
SET STATISTICS IO OFF
SET STATISTICS TIME OFF

-- создадим индекс для этих таблиц и выполним тот же запрос

create clustered index cust_clust on customers(customerID)
create clustered index ord_clust on orders(orderID, customerID)
create clustered index orrdet_clust on orderdetails(productID, orderID)
create clustered index prod_clust on products(productID)

create nonclustered index cust_nonclust on customers(country) include (companyName)
create nonclustered index ord_nonclust on orders(orderdate)
create nonclustered index orrdet_nonclust on orderdetails(quantity) include (discount)
create nonclustered index prod_nonclust on products(unitprice) include (ProductName)

SET STATISTICS IO ON
SET STATISTICS TIME ON
select prod.ProductName, orddet.discount, ord.orderdate, cust.companyName
from products as prod
join orderdetails as orddet on orddet.productID = prod.productID
join orders as ord on ord.orderID = orddet.orderID
join customers as cust on ord.customerID = cust.customerID
where cust.country = 'USA'
and ord.orderdate between '19950923' and '19980730'
and orddet.quantity >= 5
and prod.unitprice >= 10
SET STATISTICS IO OFF
SET STATISTICS TIME OFF

drop index cust_clust on customers
drop index ord_clust on orders
drop index orrdet_clust on orderdetails
drop index prod_clust on products

drop index cust_nonclust on customers
drop index ord_nonclust on orders
drop index orrdet_nonclust on orderdetails
drop index prod_nonclust on products
