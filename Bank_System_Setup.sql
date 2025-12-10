-- Bank System Project Schema
-- Author: Serhan Toka

-- Creating Database
CREATE DATABASE Bank_System;

-- Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Accounts (Linked to Customers)
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    balance DECIMAL(10, 2) DEFAULT 0.00,
    Foreign Key (customer_id) REFERENCES Customers(customer_id)
);

-- Transactions (Linked to Accounts and Basic Fraud Security)
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    transaction_type VARCHAR(10),
    transaction_date DATETIME DEFAULT NOW(),
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id),
    CHECK (amount > 0) -- Basic Fraud Security: No Negative Transaction
);

-- Sample Inputs
INSERT INTO Customers (first_name, last_name, email)
VALUES  ("Shane","Job","shanejob@mail.com"),
        ("Leonardo","Caputo","leonardocaputo@mail.com"),
        ("Robert","Luckey","robertluckey@mail.com"),
        ("Jane","Doe","sads432cdffg@tempmail.com"),
        ("Courtney","Lord","courtneylord@mail.com");

INSERT INTO Accounts (customer_id, balance)
VALUES  (1, 8294.13),
        (2, 128216.50),
        (3, 25045.45),
        (4, 0.00),
        (5, 1223414.25);

-- Fraud Scenario
-- Test transaction for account activity
INSERT INTO Transactions (account_id, amount, transaction_type, transaction_date)
VALUES (4, 1.00, 'Deposit', '2023-10-26 14:00:00');
-- Placement of stolen money
INSERT INTO Transactions (account_id, amount, transaction_type, transaction_date)
VALUES (4, 48500.00, 'Deposit', '2023-10-26 14:05:00');
-- Layering
INSERT INTO Transactions (account_id, amount, transaction_type, transaction_date)
VALUES (4, 48000.00, 'Withdraw', '2023-10-26 14:15:00');