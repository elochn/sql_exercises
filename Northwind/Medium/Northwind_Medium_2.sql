/* Show the category_name and the average product unit price for each category rounded to 2 decimal places. */

SELECT category_name,
       Round(Avg(unit_price), 2)
FROM   products
       JOIN categories
         ON categories.category_id = products.category_id
GROUP  BY category_name 