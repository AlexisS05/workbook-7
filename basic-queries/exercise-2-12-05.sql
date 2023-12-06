use northwind;

-- 1
SELECT * FROM products;

-- 2
SELECT ProductID, ProductName, UnitPrice from products;

-- 3
SELECT ProductID, ProductName, UnitPrice FROM products
ORDER BY UnitPrice ASC;

-- 4
SELECT ProductID, UnitPrice FROM products WHERE UnitPrice <= 7.50;

-- 5
SELECT UnitsInStock, UnitPrice FROM products WHERE UnitsInStock <= 100 AND UnitsInStock > 0
ORDER BY UnitPrice DESC;

-- 6 
SELECT ProductName, UnitsInStock, UnitPrice, Discontinued FROM products WHERE UnitsInStock >= 20
ORDER BY UnitPrice DESC, ProductName;

-- 7
SELECT ProductName, UnitsInStock, UnitsOnOrder FROM products
WHERE UnitsInStock = 0 AND UnitsOnOrder >=1
ORDER BY ProductName;

-- 8 Not Sure about this one
SELECT * FROM Categories;

-- 9
SELECT CategoryName FROM Categories WHERE 
CategoryName = "Seafood";

-- 10
SELECT CategoryID FROM Categories
WHERE CategoryID = 8;

-- 11
SELECT FirstName, LastName FROM Employees;

-- 12
SELECT Title FROM Employees
WHERE Title Like '%Manager%';

-- 13
SELECT Title FROM Employees;

-- 14
SELECT FirstName, LastName, Salary FROM Employees
WHERE Salary BETWEEN 2000 AND 2500;

-- 15
SELECT * FROM Suppliers;

-- 16 
SELECT CompanyName FROM Suppliers
WHERE CompanyName LIKE '%Tokyo Traders%'