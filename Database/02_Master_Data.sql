-- Branches

INSERT INTO Branches
(BranchID, BranchName, City, State, IFSCCode)
VALUES
(1,'Chennai Main Branch','Chennai','Tamil Nadu','IFSC001'),
(2,'Madurai Branch','Madurai','Tamil Nadu','IFSC002'),
(3,'Coimbatore Branch','Coimbatore','Tamil Nadu','IFSC003'),
(4,'Trichy Branch','Trichy','Tamil Nadu','IFSC004'),
(5,'Salem Branch','Salem','Tamil Nadu','IFSC005');

-- Account Types

INSERT INTO AccountTypes
(AccountTypeID, TypeName)
VALUES
(1,'Savings'),
(2,'Current'),
(3,'Fixed Deposit');

-- Transaction Types

INSERT INTO TransactionTypes
(TransactionTypeID, TypeName)
VALUES
(1,'Deposit'),
(2,'Withdrawal'),
(3,'Transfer');

-- Loan Types

INSERT INTO LoanTypes
(LoanTypeID, LoanTypeName)
VALUES
(1,'Home Loan'),
(2,'Personal Loan'),
(3,'Vehicle Loan');

-- Employee Roles

INSERT INTO EmployeeRoles
(RoleID, RoleName)
VALUES
(1,'Manager'),
(2,'Assistant Manager'),
(3,'Cashier'),
(4,'Loan Officer'),
(5,'Customer Support');