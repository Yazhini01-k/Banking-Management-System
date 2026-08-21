-- Audit Table

CREATE TABLE TransactionAudit (
    AuditID INT AUTO_INCREMENT PRIMARY KEY,
    TransactionID INT,
    AccountID INT,
    Amount DECIMAL(15,2),
    AuditDate DATETIME
);

-- Trigger 1: Transaction Audit

DELIMITER $$
CREATE TRIGGER trg_transaction_audit
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
    INSERT INTO TransactionAudit
    (
        TransactionID, AccountID, Amount, AuditDate
    )
    VALUES
    (
        NEW.TransactionID, NEW.AccountID, NEW.Amount, NOW()
    );
END $$
DELIMITER ;

-- Fraud Alert Table

CREATE TABLE FraudAlerts (
    AlertID INT AUTO_INCREMENT PRIMARY KEY,
    TransactionID INT,
    AccountID INT,
    Amount DECIMAL(15,2),
    AlertDate DATETIME
);

-- Trigger 2: Fraud Detection

DELIMITER $$
CREATE TRIGGER trg_fraud_detection
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
    IF NEW.Amount > 40000 THEN
        INSERT INTO FraudAlerts
        (
            TransactionID,AccountID,Amount,AlertDate      
        )
        VALUES
        (
            NEW.TransactionID, NEW.AccountID, NEW.Amount, NOW()
        );
    END IF;
END $$
DELIMITER ;