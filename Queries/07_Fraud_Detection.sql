-- 1. High Value Transactions (> 40000)

SELECT * FROM Transactions
WHERE Amount > 40000;

-- 2. Accounts Having More Than 10 Transactions

SELECT AccountID, COUNT(*) AS TransactionCount FROM Transactions
GROUP BY AccountID HAVING COUNT(*) > 10;

-- 3. Customers With Multiple Loans

SELECT CustomerID, COUNT(*) AS LoanCount FROM Loans
GROUP BY CustomerID HAVING COUNT(*) > 1;

-- 4. Accounts Above Average Balance

SELECT * FROM Accounts
WHERE Balance >
(
    SELECT AVG(Balance) FROM Accounts
);

-- 5. Top 5 Highest Transaction Accounts

SELECT AccountID, SUM(Amount) AS TotalTransactionAmount FROM Transactions
GROUP BY AccountID
ORDER BY TotalTransactionAmount DESC
LIMIT 5;