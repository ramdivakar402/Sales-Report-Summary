-- Project: Sales Report Summary
-- Goal: Generate a summary report of monthly sales categorized by product types

SELECT 
    ProductCategory,
    COUNT(*) AS TotalOrders,
    SUM(SalesAmount) AS TotalSales,
    SUM(CASE WHEN MONTH(OrderDate) = 1 THEN SalesAmount ELSE 0 END) AS JanSales,
    SUM(CASE WHEN MONTH(OrderDate) = 2 THEN SalesAmount ELSE 0 END) AS FebSales,
    SUM(CASE WHEN MONTH(OrderDate) = 3 THEN SalesAmount ELSE 0 END) AS MarSales
FROM SalesData
GROUP BY ProductCategory
ORDER BY TotalSales DESC;
