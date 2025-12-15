SELECT * FROM diwali_sales;

--Q1) What is the total sales amount by gender?

SELECT gender,SUM(Amount) AS total_sales
FROM diwali_sales
GROUP BY gender;


--Q2)Which age group has generated the highest total sales?

SELECT age_group,SUM(amount) AS  highest_total_sales
FROM diwali_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

--Q3)What are the top 5 states by total sales amount?

SELECT state,SUM(amount) AS total_sales
FROM diwali_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;



--Q4)Which product categories contribute the most to overall revenue?

SELECT product_category,SUM(amount) AS  overall_revenue
FROM diwali_sales
GROUP BY 1
ORDER BY 2 DESC;

--Q5)What are the top 10 most purchased products based on transaction count?

SELECT product_id,COUNT(*) AS transaction_count
FROM diwali_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;


--Q6)How does marital status (Married vs Single) impact total sales?

SELECT marital_status, SUM(orders) AS total_orders, SUM(amount) AS total_sales
FROM diwali_sales
GROUP BY 1;

--Q7)What is the average purchase amount for each age group?

SELECT age_group, ROUND(AVG(amount),2) AS average_purchase_amount
FROM diwali_sales
GROUP BY 1
ORDER BY 2 DESC;

--Q8)Which occupations contribute the highest sales revenue?

SELECT occupation, SUM(amount) AS sales_revenue
FROM diwali_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3; -- TOP 3 OCCUPATIONS CONTRIBUTED HIGHEST SALES REVENUE

--Q9)What percentage of total sales does each product category represent?

SELECT product_category, ROUND(100 * SUM(amount) / (SELECT SUM(amount) FROM diwali_sales),2) AS sales_percentage
FROM diwali_sales
GROUP BY 1
ORDER BY 2 DESC;

--Q10)Which age group and gender combination generates the highest average sales?

SELECT age_group,gender, ROUND(AVG(amount),2) as highest_average_sales
FROM diwali_sales
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 1;



