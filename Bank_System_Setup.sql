-- Bank System Project Schema
-- Author: Serhan Toka

-- Creating Database
CREATE DATABASE Bank_System;

CREATE TABLE Customers (
    customer_id INT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
);