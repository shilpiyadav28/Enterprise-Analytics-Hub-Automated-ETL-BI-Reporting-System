/*
===============================================================================
Data Segmentation Analysis
===============================================================================
Purpose:
    - To group data into meaningful categories for targeted insights.
    - For customer segmentation, product categorization, or regional analysis.

SQL Functions Used:
    - CASE: Defines custom segmentation logic.
    - GROUP BY: Groups data into segments.
===============================================================================
*/

/*Segment products into cost ranges and 
count how many products fall into each segment*/

with Product_range as (
	select 
		product_key, 
		product_name,cost,
	case 
		when cost < 100 Then 'Below 100'
		when cost between 100 and 500 Then '100 - 500'
		when cost between 500 and 1000 Then '500 - 1000'
		ELSE 'above 1000'
	END as product_range
	from Gold.dim_products
)

select 
	Product_range,
	COUNT(product_key) as total_products
from Product_range
group by Product_range
order by total_products DESC;

/*Group customers into three segments based on their spending behavior:
	- VIP: Customers with at least 12 months of history and spending more than €5,000.
	- Regular: Customers with at least 12 months of history but spending €5,000 or less.
	- New: Customers with a lifespan less than 12 months.
And find the total number of customers by each group
*/

with customer_Category as (
	select
		c.customer_key,
		c.full_name,
		SUM(sales_amount) as total_sales,
		MIN(Order_Date) as first_order,
		MAX(Order_Date) as last_order,
		DATEDIFF(MONTH, MIN(Order_Date),MAX(Order_Date)) as Life_span
	from Gold.fact_sales f
	left join Gold.dim_customers c
	on f.Customer_key = c.Customer_key
	group by 
		c.Customer_key,
		c.full_name
)
, Count_customer_segment as (
select 
	customer_key,
	full_name,
Case 
	when Life_span >= 12 and total_sales > 5000 Then 'VIP'
	when Life_span >= 12 and total_sales <= 5000 Then 'Regular'
	Else 'New'
	End Customer_Segment
from customer_Category
)

---count of customer as per customer_segemnt
select 
	customer_segment,
	COUNT(Customer_key) as total_customers
from Count_customer_segment
group by Customer_Segment
order by total_customers desc
 
