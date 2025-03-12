/* Show the city, company_name, contact_name from the customers and suppliers table merged together.
Create a column which contains 'customers' or 'suppliers' depending on the table it came from. */

SELECT city,
       company_name,
       contact_name,
       'customers' AS relationship
FROM   customers
UNION
SELECT city,
       company_name,
       contact_name,
       'suppliers' AS relationship
FROM   suppliers
/* Two things I learned from this question (from the perspective of an intermediate SQL learner):  
1. Use **UNION** to merge two indirectly related tables.  
2. Use **'Value' AS ColumnName** to create a new column and assign values. */