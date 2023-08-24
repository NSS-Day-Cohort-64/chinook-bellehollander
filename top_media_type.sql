# Provide a query that shows the most purchased Media Type.

SELECT mediaType.name, COUNT(*) AS 'Number of Purchases'
FROM invoiceLine
JOIN track ON invoiceLine.trackId = track.trackId
JOIN mediaType ON track.mediaTypeId = mediaType.mediaTypeId
GROUP BY mediaType.name
ORDER BY COUNT(*) DESC
LIMIT 1;

