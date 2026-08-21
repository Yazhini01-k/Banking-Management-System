-- 1. Customer and Account Details

SELECT c.CustomerID, c.FirstName, c.LastName, a.AccountNumber, a.Balance FROM Customers c
INNER JOIN Accounts a ON c.CustomerID = a.CustomerID;

-- 2. Customer Loan Details

SELECT c.FirstName, c.LastName, l.LoanAmount, l.LoanStatus FROM Customers c
INNER JOIN Loans l ON c.CustomerID = l.CustomerID;

-- 3. Employee and Branch Details

SELECT e.FirstName, e.LastName, b.BranchName FROM Employees e
INNER JOIN Branches b ON e.BranchID = b.BranchID;

-- 4. Transaction with Account Details

SELECT t.TransactionID, t.Amount, a.AccountNumber FROM Transactions t
INNER JOIN Accounts a ON t.AccountID = a.AccountID;

-- 5. Account Type Details

SELECT a.AccountNumber,  at.AccountTypeName, a.Balance FROM Accounts a
INNER JOIN AccountTypes at ON a.AccountTypeID = at.AccountTypeID;
