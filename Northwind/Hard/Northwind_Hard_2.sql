/*
Show how much money the company lost due to giving discounts each year, order the years from most recent to least recent. 
Round to 2 decimal places
*/
SELECT Year(order_date) AS order_year,
       Round(Sum(products.unit_price 
       * order_details.discount 
       * order_details.quantity), 2) AS discount_amount
FROM   order_details
       JOIN orders
         ON order_details.order_id = orders.order_id
       JOIN products
         ON products.product_id = order_details.product_id
GROUP  BY Year(order_date)
ORDER  BY Year(order_date) DESC 