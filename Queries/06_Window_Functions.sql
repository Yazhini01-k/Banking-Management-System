-- 1. Row Number for Accounts by Balance

SELECT AccountID, AccountNumber, Balance,
       ROW_NUMBER() OVER(ORDER BY Balance DESC) AS RowNum FROM Accounts;
       
-- 2. Rank Accounts by Balance

SELECT AccountID, AccountNumber, Balance,
       RANK() OVER(ORDER BY Balance DESC) AS BalanceRank FROM Accounts;
       
-- 3. Dense Rank Accounts

SELECT AccountID, AccountNumber, Balance,
       DENSE_RANK() OVER(ORDER BY Balance DESC) AS DenseRank FROM Accounts;
       
-- 4. Rank Accounts Within Each Account Type

SELECT AccountID, AccountTypeID, Balance,
       RANK() OVER(
           PARTITION BY AccountTypeID
           ORDER BY Balance DESC
       ) AS RankWithinType FROM Accounts;
       
-- 5. Running Total of Transactions

SELECT TransactionID, Amount,
       SUM(Amount) OVER(
           ORDER BY TransactionID
       ) AS RunningTotal FROM Transactions;