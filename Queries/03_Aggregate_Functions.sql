-- 1. Total Customers
SELECT COUNT(*) AS TotalCustomers FROM Customers;

-- 2. Total Bank Balance
SELECT SUM(Balance) AS TotalBankBalance FROM Accounts;

-- 3. Average Account Balance
SELECT AVG(Balance) AS AverageBalance FROM Accounts;

-- 4. Highest Balance
SELECT MAX(Balance) AS HighestBalance FROM Accounts;

-- 5. Lowest Balance
SELECT MIN(Balance) AS LowestBalance FROM Accounts;