use lab10
go

SELECT * INTO Customers FROM Northwind..Customers
DECLARE @count INT
SELECT @count = 10
WHILE @count >= 0
  BEGIN
    INSERT INTO Customers SELECT * FROM Northwind..Customers
    SELECT @count = @count - 1
  END

SELECT * INTO Orders FROM Northwind..Orders
SELECT * INTO OrderDetails FROM Northwind.."Order Details"

SELECT * INTO Products FROM Northwind..Products
SELECT @count = 10
WHILE @count >= 0
  BEGIN
    INSERT INTO Products (ProductName,SupplierID,CategoryID,QuantityPerUnit,
                                          UnitPrice,UnitsInStock,UnitsOnOrder,
                                                       ReorderLevel,Discontinued)
    SELECT ProductName,SupplierID,CategoryID,
             QuantityPerUnit,UnitPrice,UnitsInStock,
                UnitsOnOrder,ReorderLevel,Discontinued 
    FROM Northwind..Products
    SELECT @count = @count - 1
  END