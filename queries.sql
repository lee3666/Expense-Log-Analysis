-- Expense Log Analysis
-- 10 business questions answered with SQL
-- Author: [Your Name]

-- ============================================
-- Q1: Show all expenses from December 2024, newest first
-- ============================================
SELECT *
FROM expenses
WHERE expense_date >= '2024-12-01'
  AND expense_date <  '2025-01-01'
ORDER BY expense_date DESC;


-- ============================================
-- Q2: Total amount spent across all expenses
-- ============================================
SELECT SUM(amount) AS total_spend
FROM expenses;


-- ============================================
-- Q3: Average expense amount, rounded to 2 decimals
-- ============================================
SELECT ROUND(AVG(amount), 2) AS avg_expense
FROM expenses;


-- ============================================
-- Q4: Number of expenses per category
-- ============================================
SELECT category, COUNT(*) AS num_expenses
FROM expenses
GROUP BY category
ORDER BY num_expenses DESC;


-- ============================================
-- Q5: Total spend per category, highest first
-- ============================================
SELECT category, SUM(amount) AS total_spent
FROM expenses
GROUP BY category
ORDER BY total_spent DESC;


-- (Continue with Q6-Q10 the same way)
