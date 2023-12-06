use northwind;

-- 1
SELECT ProductName, UnitPrice
FROM products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products);

-- 2
SELECT OrderID, ShipName, ShipAddress
FROM orders
WHERE ShipVia = (SELECT ShipperID FROM shippers WHERE CompanyName = 'Federal Shipping');

-- 3
SELECT OrderID, ProductID
FROM `Order Details`
WHERE ProductID = (SELECT ProductID FROM Products 
   WHERE ProductName LIKE '%Sasquatch Ale%');

-- 4
SELECT Employees.FirstName, Employees.LastName
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.OrderID = 10266;

-- 5
SELECT customers.ContactName
FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID
WHERE orders.OrderID = 10266;