USE northwind;

-- 1
SELECT ProductID, ProductName, UnitPrice, CategoryName
FROM products 
JOIN categories
ON categories.CategoryID = products.CategoryID
ORDER BY CategoryName, ProductName;

-- 2
SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM products
JOIN suppliers
ON products.SupplierID = suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY ProductName;

-- 3
SELECT ProductID, ProductName, UnitPrice, CategoryName, CompanyName AS SupplierName
FROM products 
JOIN suppliers
ON products.ProductID = suppliers.SupplierID
JOIN categories
ON products.CategoryID = categories.CategoryID
ORDER BY ProductName;

-- 4
SELECT products.ProductName, products.UnitPrice, categories.CategoryName
FROM products
JOIN categories
ON products.CategoryID = categories.CategoryID
join ( -- finds max price of each category and joins with products table
	select CategoryID, max(UnitPrice) as MaxUnitPrice from products
    group by CategoryID
) as MaxPrices
ON MaxPrices.CategoryID = products.CategoryID
AND MaxPrices.MaxUnitPrice = products.UnitPrice;

-- 5
SELECT OrderID, ShipName, ShipAddress, CompanyName AS ShipCompanyName, ShipCountry
FROM orders
JOIN shippers
ON orders.ShipVia = shippers.ShipperID
WHERE ShipCountry LIKE '%Germany%'
ORDER BY OrderID;

-- 6
SELECT orders.OrderID, OrderDate, ShipName, ShipAddress, ProductName
FROM orders
JOIN `order details`
ON orders.OrderID = `order details`.OrderID
JOIN products
ON `order details`.ProductID = products.ProductID
WHERE ProductName LIKE '%Sasquatch Ale%'
ORDER BY OrderID;




