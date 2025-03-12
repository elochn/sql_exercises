/* Show the ProductName, CompanyName, CategoryName from the products, suppliers, and categories table */

SELECT product_name,
       company_name,
       category_name
FROM   products
       JOIN suppliers
         ON suppliers.supplier_id = products.supplier_id
       JOIN categories
         ON products.category_id = categories.category_id 