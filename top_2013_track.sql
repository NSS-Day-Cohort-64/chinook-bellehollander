# Provide a query that shows the most purchased track(s) of 2013.



SELECT
    t.Name AS track_name,
    COUNT(il.TrackId) track_count

FROM invoiceLine il
INNER JOIN track t ON t.TrackId = il.TrackId
INNER JOIN invoice i ON i.InvoiceId = il.InvoiceId
INNER JOIN customer c ON c.CustomerId = i.CustomerId
WHERE i.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5





