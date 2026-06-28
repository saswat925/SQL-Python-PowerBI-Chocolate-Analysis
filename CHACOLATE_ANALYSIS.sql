--Total Sales, Total Profit, Total Orders
SELECT
    ROUND(SUM(revenue)/1000000,2) AS Total_Revenue_Million,
    round(SUM(profit)/1000000,2) AS Total_Profit_in_million,
    COUNT(order_id) AS Total_Orders
FROM SALES;
--Total_Revenue_Million	Total_Profit_in_million	    total_orders
--25.24                      10.10                    990236

--total quantity sold = 2970470
select sum(quantity) as total_sold from sales

--Top 10 Products by Revenue
SELECT TOP 10
    p.product_name,
    SUM(s.revenue) AS Total_Revenue
FROM SALES s
JOIN PRODUCTS p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY Total_Revenue DESC;
--product_name Total_Revenue
--Dark Chocolate 50%	1775041.34
--Truffle Chocolate 80%	1643258.83
--Milk Chocolate 70%	1384758.27
--Praline Chocolate 50%	1382597.04
--Dark Chocolate 60%	1272649.97
--White Chocolate 50%	1265949.75
--White Chocolate 90%	1137968.57
--White Chocolate 80%	1133285.39
--Truffle Chocolate 90%	1132883.80
--Praline Chocolate 70% 1127404.94
--Top Performers Drive the Bulk: Dark Chocolate 50% and Truffle Chocolate 80% are your clear heavy-hitters, combined pulling in over $3.4 million and significantly outpacing the rest of the lineup.
--mid_range Cocoa is King: Products with a 50% to 80% cocoa concentration generally dominate the top spots, whereas ultra-dark 90% varieties sit at the bottom of this top-10 revenue list.

--Top 10 Products by Profit
SELECT TOP 10
    p.product_name,
    SUM(s.profit) AS Total_Profit
FROM SALES s
JOIN PRODUCTS p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY Total_Profit DESC;
--INSIGHTS
--Clear Tier Leaders: Dark Chocolate 50% and Truffle Chocolate 80% outpace the rest of the list by a wide margin, combining for nearly 26% of the total value among these top 10 products.
--Diminishing Returns on 90% Intensity: Higher cocoa concentration does not equal higher volume, as the 90% variants for both White and Truffle chocolates sit at the bottom of the rankings.

--Revenue by Category
SELECT
    p.category,
    SUM(s.revenue) AS Revenue
FROM SALES s
JOIN PRODUCTS p
ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY Revenue DESC;
--category	Revenue
--Praline	6665641.32
--White	6070172.20      
--Dark	5298123.27
--Truffle	3924343.24
--Milk	3280368.19

---Profit by Category
SELECT
    p.category,
    SUM(s.profit) AS Profit
FROM SALES s
JOIN PRODUCTS p
ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY Profit DESC;
--category	Profit
--Praline	2665242.79
--White	2428117.37
--Dark	2120672.08
--Truffle	1569202.54
--Milk	1312407.13

--Top Stores by Revenue
SELECT TOP 10
    st.store_name,
    SUM(s.revenue) AS Revenue
FROM SALES s
JOIN STORES st
ON s.store_id = st.store_id
GROUP BY st.store_name
ORDER BY Revenue DESC;
--category	Profit
--Praline	2665242.79
--White	2428117.37
--Dark	2120672.08
--Truffle	1569202.54
--Milk	1312407.13

--Revenue by Country
SELECT
    st.country,
    SUM(s.revenue) AS Revenue
FROM SALES s
JOIN STORES st
ON s.store_id = st.store_id
GROUP BY st.country
ORDER BY Revenue DESC;
--CANADA IS THE HIGHEST REVENUE COUNTRY = 5036623.01
--UK IS THE SECOND HIGHEST REVENUE COUNTRY = 4777585.16

--Revenue by City
SELECT
    st.city,
    SUM(s.revenue) AS Revenue
FROM SALES s
JOIN STORES st
ON s.store_id = st.store_id
GROUP BY st.city
ORDER BY Revenue DESC;
---Toronto is the highest revenue city = 4548214.81
---London is the second highest revenue city = 4023252.27

--Loyal vs Non-Loyal Customers
SELECT
    c.loyalty_member,
    SUM(s.revenue) AS Revenue,
    SUM(s.profit) AS Profit
FROM SALES s
JOIN CUSTOMERS c
ON s.customer_id = c.customer_id
GROUP BY c.loyalty_member;
--loyalty_member	Revenue	        profit
-- 0               12590612.84      5036745.46
-- 1               12648035.38      5058896.45

--Gender-wise Revenue
SELECT
    c.gender,
    SUM(s.revenue) AS Revenue
FROM SALES s
JOIN CUSTOMERS c
ON s.customer_id = c.customer_id
GROUP BY c.gender;
--insights
--gender	Revenue
--Male      12730900.33
--Female    12507747.89
--Age Group Analysis
SELECT
CASE
WHEN age<20 THEN 'Below 20'
WHEN age BETWEEN 20 AND 30 THEN '20-30'
WHEN age BETWEEN 31 AND 40 THEN '31-40'
WHEN age BETWEEN 41 AND 50 THEN '41-50'
ELSE 'Above 50'
END AS Age_Group,
SUM(s.revenue) Revenue
FROM SALES s
JOIN CUSTOMERS c
ON s.customer_id=c.customer_id
GROUP BY
CASE
WHEN age<20 THEN 'Below 20'
WHEN age BETWEEN 20 AND 30 THEN '20-30'
WHEN age BETWEEN 31 AND 40 THEN '31-40'
WHEN age BETWEEN 41 AND 50 THEN '41-50'
ELSE 'Above 50'
END
ORDER BY Revenue DESC;
--Age_Group	   Revenue
--Above 50	   9545285.04
--20-30	       5184169.97
--31-40	       4790371.82
--41-50	       4735779.75
--Below 20	   983041.64
----Monthly Profit Trend
SELECT
YEAR(order_date) Year,
MONTH(order_date) Month,
SUM(profit) Profit
FROM SALES
GROUP BY
YEAR(order_date),
MONTH(order_date)
ORDER BY Year,Month;
--insights
--Profit remained consistently strong across both 2023 and 2024, averaging around 420K per month, indicating stable business performance with no significant year-over-year fluctuations.
--February recorded the lowest profit in both years, while January, March, July, and August were among the highest-performing months, highlighting a clear seasonal profitability pattern.

--Monthly Profit Trend
SELECT
YEAR(order_date) Year,
MONTH(order_date) Month,
SUM(profit) Profit
FROM SALES
GROUP BY
YEAR(order_date),
MONTH(order_date)
ORDER BY Year,Month;
--insights
--Monthly profit remained highly consistent across 2023 and 2024, averaging around 420K with only minor fluctuations, reflecting stable financial performance throughout the period.
--February was the weakest-performing month in both years, while January, March, July, and August consistently delivered the highest profits, indicating a recurring seasonal profit trend.

---Average Order Value = 25.49
SELECT
round(AVG(revenue), 2) AS Average_Order_Value
FROM SALES;

--Highest Discount Products
SELECT TOP 10
p.product_name,
AVG(discount) Avg_Discount
FROM SALES s
left JOIN PRODUCTS p
ON s.product_id=p.product_id
GROUP BY p.product_name
ORDER BY Avg_Discount DESC;
--imsights
--Average discounts are remarkably consistent across the top products, ranging from 5.64% to 5.68%, indicating a standardized discounting strategy rather than product-specific promotions.
--Truffle Chocolate 90% received the highest average discount (5.68%), while all top-performing products maintained nearly identical discount levels, reflecting consistent pricing policies.

--Best Selling Products
SELECT TOP 10
p.product_name,
SUM(quantity) Total_Quantity
FROM SALES s
JOIN PRODUCTS p
ON s.product_id=p.product_id
GROUP BY p.product_name
ORDER BY Total_Quantity DESC;
--insights
---product_name	        Total_Quantity
--Dark Chocolate 50%	208996
--Truffle Chocolate 80%	193431
--Praline Chocolate 50%	162670
--Milk Chocolate 70%	162335
--Dark Chocolate 60%	149346
--White Chocolate 50%	149170
--White Chocolate 90%	134217
--Truffle Chocolate 90%	133692
--White Chocolate 80%	133171
--Praline Chocolate 70%	132564

--Top Customers
SELECT TOP 10
c.customer_id,
SUM(s.revenue) Revenue
FROM SALES s
JOIN CUSTOMERS c
ON s.customer_id=c.customer_id
GROUP BY c.customer_id
ORDER BY Revenue DESC;
--customer_id	Revenue
--C033309	1183.16
--C044802	1123.37
--C026507	1104.10
--C020498	1100.16
--C028533	1099.16
--C019742	1096.15
--C040736	1095.84
--C009919	1095.14
--C029306	1085.62
--C023205	1079.74

--Top 5 Products by Revenue (RANK)
SELECT
    p.product_name,
    SUM(s.revenue) AS Revenue,
    RANK() OVER(ORDER BY SUM(s.revenue) DESC) AS Revenue_Rank
FROM SALES s
JOIN PRODUCTS p
ON s.product_id = p.product_id
GROUP BY p.product_name;
--insights
--RANK() analysis shows that Dark Chocolate 50% is the highest revenue-generating product, followed by Truffle Chocolate 80% and Milk Chocolate 70%, making them the key revenue drivers.
--The ranking highlights a significant revenue gap between the top-ranked and lower-ranked products, indicating that a small group of products contributes a disproportionately large share of total sales.

--Monthly Revenue Growth (LAG)
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(revenue) AS Revenue,
    LAG(SUM(revenue)) OVER(ORDER BY YEAR(order_date), MONTH(order_date)) AS Previous_Month_Revenue
FROM SALES
GROUP BY YEAR(order_date), MONTH(order_date);
---Using the LAG() window function, monthly revenue shows a consistent seasonal pattern, with revenue recovering after lower-performing months and remaining above 1 million in most periods.
--The comparison with the previous month highlights recurring revenue dips in February, April, June, September, and November, followed by strong rebounds in the subsequent months, indicating stable business performance.

---Running Total Revenue
SELECT
    order_date,
    revenue,
    SUM(revenue) OVER(ORDER BY order_date) AS Running_Revenue
FROM SALES;

--Highest Profit Product in Each Category (ROW_NUMBER)
WITH CTE AS
(
SELECT
    p.category,
    p.product_name,
    SUM(s.profit) AS Profit,
    ROW_NUMBER() OVER(
        PARTITION BY p.category
        ORDER BY SUM(s.profit) DESC
    ) AS rn
FROM SALES s
JOIN PRODUCTS p
ON s.product_id=p.product_id
GROUP BY p.category,p.product_name
)
SELECT * FROM CTE
WHERE rn=1;
---insights
--category	   product_name	                  Profit	        rn
--Dark	      White Chocolate 90%	          204101.07	        1
--Milk	      White Chocolate 50%	          152636.01	        1
--Praline	  Milk Chocolate 70%	          350622.07	        1
--Truffle	  Praline Chocolate 50%	          150990.09	        1
--White	      Truffle Chocolate 90%	          203432.81	        1

--Revenue Contribution % by product name
SELECT
    p.product_name,
    SUM(s.revenue) AS Revenue,
    ROUND(
        SUM(s.revenue)*100.0/
        SUM(SUM(s.revenue)) OVER(),2
    ) AS Revenue_Percentage
FROM SALES s
JOIN PRODUCTS p
ON s.product_id=p.product_id
GROUP BY p.product_name;
--The SUM() OVER() window function reveals that Dark Chocolate 50% contributes the highest share of total revenue (7.03%), followed by Truffle Chocolate 80% (6.51%), making them the strongest revenue contributors.
--No single product contributes more than 10% of total revenue, indicating a well-diversified product portfolio with revenue distributed across multiple chocolate variants.