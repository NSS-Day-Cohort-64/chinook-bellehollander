Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
Album name
Media type
Genre

SELECT album.Title AS Album, mediaType.Name AS MediaType, genre.Name AS Genre 
FROM track
JOIN album ON album.AlbumId = track.AlbumId
JOIN mediaType ON mediaType.MediaTypeId = track.MediaTypeId
JOIN genre ON genre.GenreId = track.GenreId;

