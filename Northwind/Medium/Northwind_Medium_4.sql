/* Show the total amount of orders for each year/month. */

SELECT Year(order_date)  AS 'order_year',
       Month(order_date) AS 'order_month',
       Count(order_id)
FROM   orders
WHERE  order_id
GROUP  BY order_year,
          order_month

/* Apparently, GROUP BY can include one or several columns (here: order_year and order_month). */