SELECT * FROM customer_churn;

SELECT COUNT(*) AS total_customers
FROM customer_churn;

SELECT churn, COUNT(*) AS customers
FROM customer_churn
GROUP BY churn;

SELECT * FROM customer_churn LIMIT 5;

SELECT 
    contract,
    churn,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY contract, churn
ORDER BY contract, churn;

SELECT 
    churn,
    ROUND(AVG(monthly_charges),2) AS avg_monthly_charge
FROM customer_churn
GROUP BY churn;

SELECT 
    churn,
    ROUND(AVG(tenure),2) AS avg_tenure_months
FROM customer_churn
GROUP BY churn;

SELECT 
    payment_method,
    churn,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY payment_method, churn
ORDER BY payment_method, churn;


SELECT 
COUNT(*) AS total_customers,
SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
ROUND(
100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
2
) AS churn_rate_percent
FROM customer_churn;