# Customer Order Analysis Using SQL

## Project Overview

This project analyzes customer orders, product sales, discounts, and revenue using SQL Server. The goal was to build a relational database and answer practical business questions using SQL.

## Tools Used

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)
* SQL

## Database Structure

The database contains four related tables:

* **Customers:** Customer information
* **Products:** Product names, categories, and prices
* **Orders:** Order dates, statuses, and payment methods
* **OrderDetails:** Products purchased, quantities, prices, and discounts

Primary and foreign keys were used to connect the tables and maintain data integrity.

## Business Questions

The analysis answered the following questions:

1. What is the total revenue from completed and shipped orders?
2. Which products generated the most revenue?
3. Who are the highest-spending customers?
4. How did revenue change each month?

## SQL Skills Demonstrated

* Creating databases and tables
* Primary and foreign keys
* Inserting data
* INNER JOIN
* WHERE filtering
* GROUP BY
* SUM and ROUND
* Date functions
* Revenue calculations
* Sorting results with ORDER BY

## Revenue Calculation

Revenue was calculated after applying discounts:

```sql
Quantity * UnitPrice * (1 - Discount)
```

Only completed and shipped orders were included in revenue calculations. Pending and cancelled orders were excluded to avoid overstating actual revenue.

## Key Business Insights

* Higher-priced products contributed strongly to overall revenue.
* Ranking customers by total spending helps identify high-value customers.
* Monthly revenue analysis helps the business recognize changes in sales performance.
* Discount-adjusted revenue provides a more accurate picture than using the original selling price.
* Separating completed, shipped, pending, and cancelled orders improves reporting accuracy.

## Business Recommendations

* Focus marketing efforts on high-revenue products.
* Create loyalty offers for high-value customers.
* Monitor monthly revenue trends to identify weak sales periods.
* Review discount levels to ensure promotions support revenue growth.
* Track pending and cancelled orders separately to identify fulfillment problems.

## Conclusion

This project demonstrates how SQL can transform relational customer and order data into useful business insights. It shows practical experience with database design, table relationships, SQL joins, aggregations, filtering, and business-focused analysis.
