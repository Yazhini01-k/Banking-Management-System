-- 1. Accounts above average balance

SELECT * FROM Accounts
WHERE Balance >
(
    SELECT AVG(Balance) FROM Accounts
);

-- 2. Account with highest balance

SELECT *FROM Accounts
WHERE Balance =
(
    SELECT MAX(Balance) FROM Accounts
);

-- 3. Loans above average loan amount

SELECT * FROM Loans
WHERE LoanAmount >
(
    SELECT AVG(LoanAmount) FROM Loans
);

-- 4. Transactions above average amount

SELECT * FROM Transactions
WHERE Amount >
(
    SELECT AVG(Amount) FROM Transactions
);

-- 5. Accounts of customers having loans

SELECT * FROM Accounts
WHERE CustomerID IN
(
    SELECT CustomerID FROM Loans
);