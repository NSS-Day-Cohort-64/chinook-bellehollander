#Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
Playlist name
Total number of tracks on each playlist


SELECT
    p.Name AS 'Playlist Name',
    COUNT(pt.TrackId) AS 'Number of Tracks'
FROM Playlist p
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
GROUP BY p.Name;
