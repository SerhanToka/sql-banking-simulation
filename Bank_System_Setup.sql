-- Bank System Project Schema
-- Author: Serhan Toka

-- Creating Database
CREATE DATABASE Bank_System;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
);

-- Accounts (Linked to Customers)
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    balance DECIMAL(10, 2) DEFAULT 0.00,
    Foreign Key (customer_id) REFERENCES Customers(customer_id)
);