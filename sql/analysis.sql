--1. Overall Sales Performance

SELECT
    COUNT(*) AS total_transaction,
    round(Sum(sales), 2) AS total_sales,
    round(avg(sales), 2) AS average_sales
from supermarket_sales;
-- 2. Sales by City
select 
    Round(sum(sales), 2) as total_sales, City
    from supermarket_sales
    group by City
    order by total_sales desc;
-- 3. Sales by Product Line
select 
    "Product line", Round(sum(sales), 2) as total_sales
    from supermarket_sales
    group by "Product line"
    order by total_sales desc;
-- 4. Sales by Gender
select 
    Gender, Round(sum(sales), 2) as total_sales
    from supermarket_sales
    group by Gender
    order by total_sales desc;
-- 5. Sales by Customer Type
select 
    "custemer type", Round(sum(sales), 2) as total_sales
    from supermarket_sales
    group by "custemer type"
    order by total_sales desc;
-- 6. Payment Method Usage
select 
    Payment, Round(sum(sales), 2) as total_sales
    from supermarket_sales
    group by Payment
    order by total_sales desc;

-- 7. Monthly Sales Trend
Select
    CASE
        WHEN INSTR("Date", '/') = 2 THEN SUBSTR("Date", 1, 1)
        ELSE SUBSTR("Date", 1, 2)
    END AS month_number,
    ROUND(SUM("Sales"), 2) AS total_sales
from supermarket_sales
group by month_number
order by cast(month_number AS INTEGER);

-- 8. Average Rating by Product Line
SELECT 
    "Product line", Round(avg("Rating"), 2) as average_rating
    from supermarket_sales
    group by "Product line"
    order by average_rating desc;

-- 9. Quantity Sold by Product Line
Select 
    "product_line", Round(sum("Quantity"), 2) as total_quantity
    from supermarket_sales
    group by "product line"
    order by total_quantity desc;

-- 10. Average Unit Price by Product Line
SELECT
    "Product line",
    ROUND(AVG(CAST("Unit price" AS REAL)), 2) AS average_unit_price
FROM supermarket_sales
GROUP BY "Product line"
ORDER BY average_unit_price DESC;

-- 11. Total Gross Income by Product Line
SELECT
    "Product line",
    ROUND(SUM(CAST("gross income" AS REAL)), 2) AS total_gross_income
FROM supermarket_sales
GROUP BY "Product line"
ORDER BY total_gross_income DESC;

-- 12. Sales by Branch
SELECT
    Branch,
    ROUND(SUM(CAST("Sales" AS REAL)), 2) AS total_sales
FROM supermarket_sales
GROUP BY Branch
ORDER BY total_sales DESC;

- 13. Average Sales by Customer Type
SELECT
    "custemer type",
    ROUND(AVG(CAST("Sales" AS REAL)), 2) AS average_sales
FROM supermarket_sales
GROUP BY "custemer type"
ORDER BY average_sales DESC;

-- 14. Transaction Count by Branch
SELECT
    Branch,
    COUNT(*) AS transaction_count
FROM supermarket_sales
GROUP BY Branch
ORDER BY transaction_count DESC;

-- 15. Average Quantity per Transaction
SELECT
    Branch,
    ROUND(AVG(CAST("Quantity" AS REAL)), 2) AS average_quantity_per_transaction
FROM supermarket_sales
GROUP BY Branch
ORDER BY average_quantity_per_transaction DESC;

-- 16. Total Sales by Payment Method
SELECT
    Payment,
    ROUND(SUM(CAST("Sales" AS REAL)), 2) AS total_sales
FROM supermarket_sales
GROUP BY Payment
ORDER BY total_sales DESC;
-- 17. Average Rating by Gender
SELECT
    Gender,
    ROUND(AVG(CAST("Rating" AS REAL)), 2) AS average_rating
FROM supermarket_sales
GROUP BY Gender
ORDER BY average_rating DESC;

-- 18. Gross Income by City
SELECT
    City,
    ROUND(SUM(CAST("gross income" AS REAL)), 2) AS total_gross_income
FROM supermarket_sales
GROUP BY City
ORDER BY total_gross_income DESC;

-- 19. Average Rating by City
SELECT
    City,
    ROUND(AVG(CAST("Rating" AS REAL)), 2) AS average_rating
FROM supermarket_sales
GROUP BY City
ORDER BY average_rating DESC;

-- 20. Sales by Gender and Customer Type
Select
    Gender, "custemer type", Round(sum("Sales"), 2) as total_sales
from supermarket_sales
group by Gender, "custemer type"
order by total_sales desc;

-- 21. Product Line Transaction Count
SELECT
    "Product line",
    COUNT(*) AS transaction_count
FROM supermarket_sales
GROUP BY "Product line"
ORDER BY transaction_count DESC;

-- 22. Highest Single Transaction
SELECT
    "Invoice ID",
    City,
    "Product line",
    ROUND(CAST("Sales" AS REAL), 2) AS sales
FROM supermarket_sales
ORDER BY CAST("Sales" AS REAL) DESC
LIMIT 1;

-- 23. Lowest Single Transaction
SELECT
    "Invoice ID",
    City,
    "Product line",
    ROUND(CAST("Sales" AS REAL), 2) AS sales
FROM supermarket_sales
ORDER BY CAST("Sales" AS REAL) ASC
LIMIT 1;

-- 24. High-Value Transactions
SELECT
    "Invoice ID",
    City,
    "Product line",
    ROUND(CAST("Sales" AS REAL), 2) AS sales
FROM supermarket_sales
WHERE CAST("Sales" AS REAL) > 500
ORDER BY sales DESC;

-- 25. Product Lines with Sales Above Average
SELECT
    "Product line",
    ROUND(SUM(CAST("Sales" AS REAL)), 2) AS total_sales
FROM supermarket_sales
GROUP BY "Product line"
HAVING SUM(CAST("Sales" AS REAL)) >
       (SELECT AVG(CAST("Sales" AS REAL)) FROM supermarket_sales)
ORDER BY total_sales DESC;