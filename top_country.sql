# Which country's customers spent the most?


SELECT i.BillingCountry AS Country, SUM(i.Total) AS Total_Spent
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY Total_Spent DESC
LIMIT 1;
