/*Show the employee's first_name and last_name, a "num_orders" column with a count of the orders taken, and a column called "Shipped" that displays "On Time" if the order shipped_date is less or equal to the required_date, "Late" if the order shipped late, "Not Shipped" if shipped_date is null.

Order by employee last_name, then by first_name, and then descending by number of orders.
*/
SELECT employees.first_name,
       employees.last_name,
       Count(order_id) AS num_orders,
       ( CASE
           WHEN shipped_date <= required_date THEN 'On Time'
           WHEN shipped_date > required_date THEN 'Late'
           WHEN shipped_date IS NULL THEN 'Not Shipped'
         END )         AS shipped
FROM   employees
       JOIN orders
         ON employees.employee_id = orders.employee_id
GROUP  BY employees.last_name,
          employees.first_name,
          shipped
ORDER  BY employees.last_name,
          employees.first_name,
          num_orders DESC
/*Two things to note:
. Learn the exact syntax (especially CASE and aliases used for creating new columns in this exercise).
. Quotation marks can affect the results. For example, try using "shipped" for the newly created column or "num_orders". So avoid overusing them.*/