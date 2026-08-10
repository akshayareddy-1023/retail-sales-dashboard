-- RETAIL SALES PERFORMANCE ANALYSIS
-- Dataset: Superstore Cleaned

-- 1. View all records
SELECT *
FROM superstore_cleaned;

-- 2. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM superstore_cleaned;

-- 3. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore_cleaned;

-- 4. Total Orders
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders
FROM superstore_cleaned;

-- 5. Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM superstore_cleaned;

-- 6. Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore_cleaned
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 7. Profit by Category
SELECT Category, SUM(Profit) AS Total_Profit
FROM superstore_cleaned
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 8. Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM superstore_cleaned
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 9. Profit by Region
SELECT Region, SUM(Profit) AS Total_Profit
FROM superstore_cleaned
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 10. Sales by Segment
SELECT Segment, SUM(Sales) AS Total_Sales
FROM superstore_cleaned
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 11. Top 10 Products by Sales
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM superstore_cleaned
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 12. Top 10 Products by Profit
SELECT Product_Name, SUM(Profit) AS Total_Profit
FROM superstore_cleaned
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;

-- 13. Monthly Sales Trend
SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Total_Sales
FROM superstore_cleaned
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;

-- 14. Monthly Profit Trend
SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Profit) AS Total_Profit
FROM superstore_cleaned
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;