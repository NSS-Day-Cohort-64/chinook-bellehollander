# Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time)



SELECT e.firstName || " " || e.LastName AS "Employee Name", SUM(i.total) AS "Total Sales"
FROM employee e
JOIN customer c ON e.employeeId = c.SupportRepId
JOIN invoice i ON c.customerId = i.CustomerId
GROUP BY e.employeeId;
