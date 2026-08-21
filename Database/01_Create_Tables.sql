CREATE DATABASE BankingManagementDB;
USE BankingManagementDB;

CREATE TABLE Branches (
    BranchID INT AUTO_INCREMENT PRIMARY KEY,
    BranchName VARCHAR(100) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    IFSCCode VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE EmployeeRoles (
    RoleID INT AUTO_INCREMENT PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL,
    Description VARCHAR(200)
);

CREATE TABLE AccountTypes (
    AccountTypeID INT AUTO_INCREMENT PRIMARY KEY,
    AccountTypeName VARCHAR(50) NOT NULL,
    MinimumBalance DECIMAL(10,2) NOT NULL
);

CREATE TABLE TransactionTypes (
    TransactionTypeID INT AUTO_INCREMENT PRIMARY KEY,
    TransactionTypeName VARCHAR(50) NOT NULL
);

CREATE TABLE LoanTypes (
    LoanTypeID INT AUTO_INCREMENT PRIMARY KEY,
    LoanTypeName VARCHAR(50) NOT NULL,
    InterestRate DECIMAL(5,2) NOT NULL
);

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(15) NOT NULL UNIQUE,
    RegistrationDate DATE NOT NULL,
    StatusOfAcc VARCHAR(20) NOT NULL DEFAULT 'Active'
);

CREATE TABLE CustomerAddresses (
    AddressID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    AddressLine VARCHAR(200) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    Pincode VARCHAR(10) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE CustomerContacts (
    ContactID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    ContactType VARCHAR(30) NOT NULL,
    ContactValue VARCHAR(100) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    BranchID INT NOT NULL,
    RoleID INT NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    HireDate DATE NOT NULL,
    Salary DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID),
    FOREIGN KEY (RoleID) REFERENCES EmployeeRoles(RoleID)
);

CREATE TABLE Accounts (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    BranchID INT NOT NULL,
    AccountTypeID INT NOT NULL,
    AccountNumber VARCHAR(20) NOT NULL UNIQUE,
    Balance DECIMAL(15,2) NOT NULL DEFAULT 0.00,
    OpenDate DATE NOT NULL,
    StatusOfAcc VARCHAR(20) NOT NULL DEFAULT 'Active',
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID),
    FOREIGN KEY (AccountTypeID) REFERENCES AccountTypes(AccountTypeID)
);

CREATE TABLE Beneficiaries (
    BeneficiaryID INT AUTO_INCREMENT PRIMARY KEY,
    AccountID INT NOT NULL,
    BeneficiaryName VARCHAR(100) NOT NULL,
    BeneficiaryAccountNo VARCHAR(20) NOT NULL,
    BankName VARCHAR(100) NOT NULL,
    IFSCCode VARCHAR(20) NOT NULL,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    AccountID INT NOT NULL,
    TransactionTypeID INT NOT NULL,
    Amount DECIMAL(15,2) NOT NULL,
    TransactionDate DATETIME NOT NULL,
    Description VARCHAR(200),
    TransactionStatus VARCHAR(20) NOT NULL,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (TransactionTypeID) REFERENCES TransactionTypes(TransactionTypeID)
);

CREATE TABLE Loans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    LoanTypeID INT NOT NULL,
    LoanAmount DECIMAL(15,2) NOT NULL,
    InterestRate DECIMAL(5,2) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    LoanStatus VARCHAR(20) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (LoanTypeID) REFERENCES LoanTypes(LoanTypeID)
);

CREATE TABLE LoanPayments (
    LoanPaymentID INT AUTO_INCREMENT PRIMARY KEY,
    LoanID INT NOT NULL,
    PaymentAmount DECIMAL(15,2) NOT NULL,
    PaymentDate DATE NOT NULL,
    RemainingBalance DECIMAL(15,2) NOT NULL,
    FOREIGN KEY (LoanID) REFERENCES Loans(LoanID)
);

CREATE TABLE DebitCards (
    DebitCardID INT AUTO_INCREMENT PRIMARY KEY,
    AccountID INT NOT NULL,
    CardNumber VARCHAR(20) NOT NULL UNIQUE,
    ExpiryDate DATE NOT NULL,
    CardStatus VARCHAR(20) NOT NULL,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

CREATE TABLE CreditCards (
    CreditCardID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    CardNumber VARCHAR(20) NOT NULL UNIQUE,
    CreditLimit DECIMAL(15,2) NOT NULL,
    OutstandingAmount DECIMAL(15,2) NOT NULL,
    ExpiryDate DATE NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE LoginHistory (
    LoginID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    LoginTime DATETIME NOT NULL,
    LogoutTime DATETIME,
    IPAddress VARCHAR(50) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Notifications (
    NotificationID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    Message VARCHAR(255) NOT NULL,
    NotificationDate DATETIME NOT NULL,
    Status VARCHAR(20) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Statements (
    StatementID INT AUTO_INCREMENT PRIMARY KEY,
    AccountID INT NOT NULL,
    StatementMonth VARCHAR(20) NOT NULL,
    TotalCredits DECIMAL(15,2) NOT NULL,
    TotalDebits DECIMAL(15,2) NOT NULL,
    ClosingBalance DECIMAL(15,2) NOT NULL,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);