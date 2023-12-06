use northwind;
-- 1
SELECT SupplierID, COUNT(*)
FROM suppliers
GROUP BY SupplierID;

-- 2
SELECT SUM(Salary)
FROM employees;

-- 3
SELECT MIN(UnitPrice)
FROM products;

-- 4
SELECT AVG(UnitPrice)
FROM products;

-- 5 
SELECT MIN(UnitPrice)
FROM products;

-- 6 
SELECT SupplierID, COUNT(ProductID)
FROM products
GROUP BY SupplierID;

-- 7
SELECT CategoryID, AVG(UnitPrice)
FROM products
GROUP BY CategoryID;

-- 8 
SELECT SupplierID, COUNT(ProductID)
FROM products
GROUP BY SupplierID
HAVING COUNT(ProductID) >= 5
ORDER BY SupplierID;

-- 9
SELECT ProductID, ProductName, UnitPrice * UnitsInStock
AS InventoryValue
FROM products
GROUP BY ProductID
ORDER BY InventoryValue DESC, ProductName;