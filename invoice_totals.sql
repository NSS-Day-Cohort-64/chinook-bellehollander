# Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
Invoice Total
Customer Name
Customer Country
Sale Agent full name


SELECT
    i.Total,
    c.FirstName || " " || c.LastName AS Customer,
    c.Country,
    e.FirstName || " " || e.LastName AS SalesAgent

FROM
    customer c
    JOIN invoice i ON c.CustomerId = i.CustomerId
    JOIN employee e ON c.SupportRepId = e.EmployeeId

ORDER BY
    i.Total DESC;
