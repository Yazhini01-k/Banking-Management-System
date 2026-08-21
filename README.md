# 🏦 Banking Management System with Fraud Detection

A **MySQL-based Banking Management System** designed to manage core banking operations and demonstrate practical SQL concepts. The project manages customers, accounts, transactions, loans, cards, employees, beneficiaries, and banking activities with basic fraud detection features.

## 📌 Project Overview

This project simulates a real-world banking database system using **MySQL**. It focuses on relational database design, data management, advanced SQL queries, and database programming.

The system provides a structured database for storing and analyzing banking information such as customer details, account balances, transactions, loans, cards, and login activities.

## ✨ Features

- 👤 Customer Management
- 🏦 Bank Account Management
- 💰 Transaction Management
- 💳 Debit Card Management
- 💳 Credit Card Management
- 🏠 Loan Management
- 💵 Loan Payment Tracking
- 👥 Beneficiary Management
- 🏢 Branch Management
- 👨‍💼 Employee Management
- 🔐 Login History Tracking
- 🔔 Customer Notifications
- 📄 Account Statements
- 🚨 Basic Fraud Detection
- ⚙️ Stored Procedures
- 🔄 Database Triggers
- 👁️ SQL Views
- 📊 Banking Reports and Analysis

## 🗄️ Database

The project contains **19 relational tables** with **1100+ sample records**.

### Main Tables

- `Customers`
- `CustomerAddresses`
- `CustomerContacts`
- `Accounts`
- `AccountTypes`
- `Transactions`
- `TransactionTypes`
- `Loans`
- `LoanTypes`
- `LoanPayments`
- `DebitCards`
- `CreditCards`
- `Employees`
- `EmployeeRoles`
- `Branches`
- `Beneficiaries`
- `LoginHistory`
- `Notifications`
- `Statements`

## 🧠 SQL Concepts Used

### Basic SQL

- SELECT
- INSERT
- UPDATE
- DELETE
- WHERE
- ORDER BY
- GROUP BY
- HAVING

### Advanced SQL

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Aggregate Functions
- Subqueries
- String Functions
- Window Functions
- CASE Statements
- Date Functions

### Database Programming

- Primary Keys
- Foreign Keys
- Unique Constraints
- NOT NULL Constraints
- Default Values
- Stored Procedures
- Triggers
- Views
- Transactions

## 🚨 Fraud Detection

The project includes SQL-based fraud detection logic to identify potentially suspicious banking activities.

Examples include:

- High-value transactions
- Unusual transaction patterns
- Suspicious account activity
- Multiple transactions within a short period
- Transaction-based risk analysis

> **Note:** The fraud detection functionality is implemented for educational purposes and is not intended to replace a production banking fraud detection system.

## 📊 Sample Data

The database contains sample records for testing and SQL analysis.

| Entity | Sample Records |
|---|---:|
| Customers | 50 |
| Employees | 20 |
| Accounts | 100 |
| Loans | 50 |
| Loan Payments | 150 |
| Debit Cards | 100 |
| Credit Cards | 100 |
| Beneficiaries | 100 |
| Transactions | 500 |

## ⚙️ Stored Procedures

Stored procedures are used to perform reusable banking operations such as:

- Retrieving customer accounts
- Retrieving customer loans
- Retrieving branch employees
- Calculating customer account balances
- Generating banking information

## 🔄 Triggers

Database triggers are used to automate specific database operations such as:

- Transaction auditing
- Monitoring transaction activities
- Supporting fraud detection logic
- Maintaining database consistency

## 👁️ Views

SQL views are used to simplify complex queries and provide reusable representations of banking data for reporting and analysis.

## 📂 Project Structure

```text
Banking-Management-System-SQL/
│
├── Database/
│   ├── 01_Create_Tables.sql
│   └── 02_Master_Data.sql
│
├── Queries/
│   ├── 01_Basic_Queries.sql
│   ├── 02_Joins.sql
│   ├── 03_Aggregate_Functions.sql
│   ├── 04_Subqueries.sql
│   ├── 05_String_Functions.sql
│   ├── 06_Window_Functions.sql
│   └── 07_Fraud_Detection.sql
│
├── Procedures/
│   └── Stored_Procedures.sql
│
├── Triggers/
│   └── Triggers.sql
│
├── Views/
│   └── Views.sql
│
└── README.md
