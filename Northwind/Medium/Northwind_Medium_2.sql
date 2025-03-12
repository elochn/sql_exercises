/* Show the category_name and the average product unit price for each category rounded to 2 decimal places. */

SELECT category_name, ROUND(AVG(unit_price),2) from products 
join categories 
on categories.category_id = products.category_id
GROUP BY category_name