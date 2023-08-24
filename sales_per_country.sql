# Provide a query that shows the total sales per country.



SELECT i.billingCountry, SUM(i.total) AS total_sales
FROM invoice i
GROUP BY i.billingCountry
ORDER BY total_sales DESC