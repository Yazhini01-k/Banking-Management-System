-- View 1: Customer Account Summary
CREATE VIEW CustomerAccountSummary AS
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    a.AccountNumber,
    a.Balance
FROM Customers c
JOIN Accounts a
ON c.CustomerID = a.CustomerID;

-- View 2: Loan Summary
CREATE VIEW LoanSummary AS
SELECT
    l.LoanID,
    c.FirstName,
    c.LastName,
    l.LoanAmount,
    l.LoanStatus
FROM Loans l
JOIN Customers c
ON l.CustomerID = c.CustomerID;