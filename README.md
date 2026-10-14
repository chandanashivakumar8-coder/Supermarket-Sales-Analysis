# Supermarket Sales Analysis

A beginner-level Data Analyst portfolio project using SQL and Power BI to analyze supermarket transactions, evaluate sales performance, and derive actionable business insights.

## Project Overview

This project analyzes 1,000 supermarket transactions recorded across three cities between January and March 2019. The objective is to understand sales performance, product category contribution, customer purchasing behavior, payment preferences, and customer ratings.

The analysis combines SQL queries with an interactive Power BI dashboard to turn transaction data into meaningful business findings.

## Objectives

- Analyze overall sales and gross income.
- Identify the highest- and lowest-performing product categories.
- Compare sales performance across cities and branches.
- Understand customer-type and gender-based purchasing patterns.
- Examine payment method preferences.
- Evaluate customer ratings and monthly sales trends.
- Present findings through an interactive dashboard.

## Tools and Technologies

- **SQL (SQLite):** Data analysis, aggregation, grouping, filtering, and sorting.
- **Microsoft Power BI:** KPI cards, charts, interactive filters, and dashboard reporting.
- **Microsoft Excel:** Data inspection and preliminary analysis.
- **Git and GitHub:** Project version control and portfolio presentation.
- **Markdown:** Project documentation.

## Dataset

The dataset contains 1,000 transaction records and 17 columns, including:

- Invoice ID
- Branch and city
- Customer type and gender
- Product line
- Unit price and quantity
- Sales and gross income
- Date and time
- Payment method
- Customer rating

**Period covered:** January–March 2019  
**Transaction records:** 1,000  
**Currency:** Not explicitly specified in the source dataset.

## Key Results

| Metric | Result |
|---|---:|
| Total Sales | 322,966.75 |
| Total Transactions | 1,000 |
| Average Transaction Value | 322.97 |
| Total Gross Income | 15,379.37 |
| Average Customer Rating | Approximately 6.97 / 10 |

### Key Findings

- **Top product category:** Food and beverages, with total sales of 56,144.84.
- **Highest-performing city:** Naypyitaw, with total sales of 110,568.71.
- **Customer type:** Member customers contributed 189,694.76 in sales.
- **Most-used payment method:** E-wallet, with 345 transactions.
- **Customer ratings:** The overall average rating was approximately 6.97 out of 10.

See [Business Insights & Recommendations](business_insights.md) for the detailed findings and proposed business actions.

## Project Structure

```text
Supermarket-Sales-Analysis/
├── data/
│   └── supermarket_sales.csv
├── sql/
│   ├── analysis_queries.sql
│   └── database/
│       └── supermarket_sales.db
├── powerbi/
│   └── supermarket_sales_dashboard.pbix
├── screenshots/
│   └── dashboard.png
├── business_insights.md
└── README.md
```

*The filenames shown above are the intended structure. Keep the actual filenames and folders in your repository consistent with your project.*

## SQL Analysis

The SQL analysis includes:

- Total sales and transaction counts
- Sales by product category
- City and branch comparisons
- Average unit price by product category
- Customer-type analysis
- Payment method distribution
- Average customer ratings
- Sales classification using `CASE WHEN`
- Numeric conversion using `CAST()`

Queries are documented in [`sql/analysis_queries.sql`](sql/analysis_queries.sql).

## Power BI Dashboard

The dashboard presents key performance indicators and visual comparisons to help explore sales performance across categories, locations, customers, payment methods, and time.

### Dashboard Preview

![Supermarket Sales Dashboard](screenshots/dashboard.png)

*Ensure that `screenshots/dashboard.png` exists and contains your actual dashboard screenshot. Otherwise, replace this path with your saved screenshot filename.*

## Business Value

The project demonstrates how transaction data can help businesses:

- Identify stronger and weaker product categories.
- Compare location-level performance.
- Understand customer purchasing patterns.
- Review payment preferences.
- Monitor sales performance and customer ratings.
- Identify areas for further investigation and improvement.

## Skills Demonstrated

- Data inspection and validation
- SQL querying and aggregation
- `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, and aggregate functions
- `CAST()` and `CASE WHEN`
- KPI development and dashboard design
- Business interpretation and recommendations
- Technical documentation and GitHub project organization

## Limitations

- The dataset covers only three months, so it is not sufficient to establish long-term seasonal trends.
- The findings describe observed patterns and do not establish causal relationships.
- Recommendations should be validated against additional information, such as operating costs, inventory, customer feedback, and historical sales.

## Conclusion

This project demonstrates an end-to-end introductory data analytics workflow, from inspecting transaction data and writing SQL queries to building a Power BI dashboard and communicating business insights.

**Author:** Chandana CS