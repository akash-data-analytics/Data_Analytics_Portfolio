CREATE DATABASE churn_analysis;
USE churn_analysis;
SELECT *
FROM customer_churnn
LIMIT 10;
SELECT COUNT(*) AS total_customers
FROM customer_churnn;
SELECT Churn, COUNT(*) AS customers
FROM customer_churnn
GROUP BY Churn;
SELECT
ROUND(
100 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS churn_rate_percent
FROM customer_churnn;
SELECT
Contract,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churn_customers
FROM customer_churnn
GROUP BY Contract;
SELECT
InternetService,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churn_customers
FROM customer_churnn
GROUP BY InternetService;
SELECT
PaymentMethod,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churn_customers
FROM customer_churnn
GROUP BY PaymentMethod;
SELECT
Churn,
ROUND(AVG(MonthlyCharges),2) AS avg_monthly_charge
FROM customer_churnn
GROUP BY Churn;
SELECT
customerID,
MonthlyCharges,
Contract
FROM customer_churnn
ORDER BY MonthlyCharges DESC
LIMIT 10;
ALTER TABLE customer_churnn
CHANGE `ï»¿customerID` customerID VARCHAR(50);
SELECT
customerID,
MonthlyCharges,
Contract
FROM customer_churnn
ORDER BY MonthlyCharges DESC
LIMIT 10;
SELECT
customerID,
Contract,
MonthlyCharges,
Churn
FROM customer_churnn
WHERE Contract = 'Month-to-month'
AND MonthlyCharges > 80;