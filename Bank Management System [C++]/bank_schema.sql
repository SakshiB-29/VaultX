-- Create the database
CREATE DATABASE bank_management;
USE bank_management;

-- Create the accounts table
CREATE TABLE accounts (
    account_number BIGINT(12) NOT NULL PRIMARY KEY,        -- 12-digit account number
    holder_name VARCHAR(50) NOT NULL,                      -- Account holder name
    dob DATE NULL,                                          -- Date of birth (optional for now)
    address VARCHAR(200) NULL,                              -- Address (optional for now)
    account_type CHAR(1) NOT NULL CHECK (account_type IN ('S', 'C')), -- S = Saving, C = Current
    balance INT NOT NULL CHECK (balance >= 0 AND balance <= 1000000) -- Balance in ₹
);

-- Sample data (you can remove or edit later)
INSERT INTO accounts (account_number, holder_name, dob, address, account_type, balance)
VALUES
(100000000001, 'Sakshi Bhingardive', '2002-08-01', 'Pune', 'S', 5000),
(100000000002, 'Rahul Kumar', '1998-04-15', 'Mumbai', 'C', 12000),
(100000000003, 'Anita Joshi', '1995-10-22', 'Nagpur', 'S', 7500),
(100000000004, 'Vikas Deshmukh', '1990-12-05', 'Aurangabad', 'C', 20000);

-- ===========================
-- Example Queries for Program
-- ===========================

-- Create new account
-- INSERT INTO accounts VALUES (123456789012, 'Name Here', 'YYYY-MM-DD', 'Address Here', 'S', 6000);

-- Modify account details
-- UPDATE accounts 
-- SET holder_name = 'New Name', dob = 'YYYY-MM-DD', address = 'New Address', account_type = 'C', balance = 8000 
-- WHERE account_number = 123456789012;

-- Deposit money
-- UPDATE accounts SET balance = balance + 1000 WHERE account_number = 123456789012;

-- Withdraw money
-- UPDATE accounts SET balance = balance - 500 WHERE account_number = 123456789012;

-- Delete account
-- DELETE FROM accounts WHERE account_number = 123456789012;

-- View all accounts
-- SELECT * FROM accounts;

-- Check balance for one account
-- SELECT balance FROM accounts WHERE account_number = 123456789012;
