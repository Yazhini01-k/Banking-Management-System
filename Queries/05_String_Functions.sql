-- 1. Full Customer Name

SELECT CONCAT(FirstName,' ',LastName) AS FullName
FROM Customers;

-- 2. Customer Names in Uppercase

SELECT UPPER(FirstName) AS CustomerName
FROM Customers;

-- 3. Length of Customer Names

SELECT FirstName, LENGTH(FirstName) AS NameLength
FROM Customers;