-- Purpose:When a bank employee enters a customer ID, it returns all accounts belonging to that customer.
DELIMITER //
CREATE PROCEDURE GetCustomerAccounts(
    IN p_CustomerID INT
)
BEGIN
    SELECT
        AccountID,
        AccountNumber,
        Balance,
        StatusOfAcc
    FROM Accounts
    WHERE CustomerID = p_CustomerID;
END //
DELIMITER ;
-- Purpose:Returns all loans taken by a customer.
DELIMITER //
CREATE PROCEDURE GetCustomerLoans(
    IN p_CustomerID INT
)
BEGIN
    SELECT
        LoanID,
        LoanAmount,
        InterestRate,
        LoanStatus
    FROM Loans
    WHERE CustomerID = p_CustomerID;
END //
DELIMITER ;
-- Purpose: Shows employees working in a specific branch.
DELIMITER //
CREATE PROCEDURE GetBranchEmployees(
    IN p_BranchID INT
)
BEGIN
    SELECT
        EmployeeID,
        FirstName,
        LastName,
        Email
    FROM Employees
    WHERE BranchID = p_BranchID;
END //
DELIMITER ;
-- Purpose: Calculates total money a customer has across all accounts.
DELIMITER //
CREATE PROCEDURE GetCustomerTotalBalance(
    IN p_CustomerID INT
)
BEGIN
    SELECT
        CustomerID,
        SUM(Balance) AS TotalBalance
    FROM Accounts
    WHERE CustomerID = p_CustomerID
    GROUP BY CustomerID;
END //
DELIMITER ;