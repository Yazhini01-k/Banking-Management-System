-- 1. View all customers
SELECT * FROM Customers;

-- 2. View all active accounts
SELECT * 
FROM Accounts
WHERE StatusOfAcc = 'Active';

-- 3. View all loans
SELECT * 
FROM Loans;

-- 4. View all transactions
SELECT * 
FROM Transactions;

-- 5. View customers with balance greater than 100000
SELECT *
FROM Accounts
WHERE Balance > 100000;