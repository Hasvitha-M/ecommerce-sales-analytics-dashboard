CREATE DATABASE ecommerce_sales;
USE ecommerce_sales;
SELECT * 
FROM superstore
LIMIT 10;



#total revenue
SELECT ROUND(SUM(Sales),2) AS total_revenue
FROM superstore;

#revenue by Product Category
SELECT Category, ROUND(SUM(Sales),2) AS revenue
FROM superstore
GROUP BY Category
ORDER BY revenue DESC;

#category revenue
SELECT Category,
       ROUND(SUM(Sales),2) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;

#top products by sales
SELECT `Product Name`,
       ROUND(SUM(Sales),2) AS total_sales
FROM superstore
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 10;

#regional sales performance
SELECT Region,
       ROUND(SUM(Sales),2) AS regional_sales
FROM superstore
GROUP BY Region
ORDER BY regional_sales DESC;

#highest revenue customers
SELECT `Customer Name`,
       ROUND(SUM(Sales),2) AS total_sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 10;

#monthly sales trend
SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS month,
       ROUND(SUM(Sales),2) AS monthly_revenue
FROM superstore
GROUP BY month
ORDER BY month;