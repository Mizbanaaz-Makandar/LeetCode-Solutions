# Problem
Given a Delivery table containing food delivery records (delivery_id, customer_id, order_date, customer_pref_delivery_date), find the percentage of customers whose first order was immediate — i.e., the preferred delivery date equals the order date. Round the result to 2 decimal places.

# Definitions
Immediate order: customer_pref_delivery_date = order_date

Scheduled order: customer_pref_delivery_date > order_date

First order: the order with the earliest order_date for a given customer (guaranteed unique per customer)

# Table Schema
Column	                             Type	                    Description
delivery_id	                        int	Primary key,               unique
customer_id	                        int                            Customer identifier
order_date	                        date	                         Date the order was placed
customer_pref_delivery_date	        date	                         Preferred delivery date (≥ order_date)

# Approach
Rank orders per customer by order_date using ROW_NUMBER().

Filter to rank 1 to isolate each customer's first order.

Count immediate orders using the boolean order_date = customer_pref_delivery_date.

Divide by total customers and multiply by 100, rounding to 2 decimals.
