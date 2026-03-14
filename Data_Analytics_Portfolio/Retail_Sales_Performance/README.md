# Retail Sales Performance Analysis

## Project Overview

This project analyzes retail sales performance using the Sample Superstore dataset.
The goal is to identify patterns in sales, profit, and discount strategies and understand how discounts impact profitability.

## Dataset

The dataset used is the **Sample Superstore dataset**, which contains order-level retail transaction data including:

* Sales
* Profit
* Discount
* Product category
* Region
* Customer information

## Tools Used

* **Excel** – Data cleaning and preparation
* **SQL** – Data analysis queries
* **Power BI** – Interactive dashboard visualization

## Analysis Performed

One key analysis performed in SQL was evaluating how discount levels affect total profit.

Example SQL query used:

SELECT
discount,
SUM(profit) AS total_profit
FROM orders
GROUP BY discount
ORDER BY discount;

## Key Insights

* Higher discount levels tend to reduce profitability.
* Discounts above around **30% often result in negative profit**.
* Certain product categories contribute more to total sales and profit.

## Dashboard

A Power BI dashboard was created to visualize sales performance across categories, regions, and discount levels.

Dashboard files included in this repository:

* Retail_Sales_Performance_Dashboard.pbix
* Retail_Sales_Performance_Dashboard.pdf

## Project Structure

SampleSuperstore.csv – Raw dataset
cleaned_retail_sales_data.csv – Cleaned dataset
discount_vs_profit_analysis.csv – SQL analysis output
discount_profit_analysis.sql – SQL query used for analysis
Retail_Sales_Performance_Dashboard.pbix – Power BI dashboard
Retail_Sales_Performance_Dashboard.pdf – Dashboard preview

##Dashboard Preview 
![Retail Sales Dashboard](Dashboardrs.png)
