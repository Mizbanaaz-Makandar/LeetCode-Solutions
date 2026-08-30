Table: Customer

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| customer_id   | int     |
| name          | varchar |
| visited_on    | date    |
| amount        | int     |
+---------------+---------+
In SQL,(customer_id, visited_on) is the primary key for this table.
This table contains data about customer transactions in a restaurant.
visited_on is the date on which the customer with ID (customer_id) has visited the restaurant.
amount is the total paid by a customer.
 

You are the restaurant owner and you want to analyze a possible expansion (there will be at least one customer every day).

Compute the moving average of how much the customer paid in a seven days window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.

Return the result table ordered by visited_on in ascending order.



Solution:

SELECT
    visited_on,
    amount,
    ROUND(amount / 7, 2) AS average_amount
FROM (
    SELECT
        d.visited_on,
        SUM(d.daily_total) OVER (
            ORDER BY d.visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS amount,
        COUNT(*) OVER (
            ORDER BY d.visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS days_count
    FROM (
        SELECT
            visited_on,
            SUM(amount) AS daily_total
        FROM Customer
        GROUP BY visited_on
    ) d
) t
WHERE days_count = 7
ORDER BY visited_on ASC;
