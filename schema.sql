-- Expense Log Analysis
-- Schema for the expenses table
-- Author: [Lee Kibet Songok]
-- Date: [20/05/2025]



CREATE TABLE expenses (
    expense_id   INT PRIMARY KEY,
    expense_date DATE NOT NULL,
    category     VARCHAR(30) NOT NULL,
    description  VARCHAR(100),
    amount       DECIMAL(10, 2) NOT NULL
);
