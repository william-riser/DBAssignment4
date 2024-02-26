-- Creative addition: Define a new meaningful query using at least three tables, 
-- and some window function. Explain clearly what your query achieves, 
-- and what the results mean


-- This query calculates the average length of rock songs for each artist.
SELECT artists.Name, ROUND(AVG(tracks.Milliseconds) / 60000, 2) AS Minutes
FROM tracks
    JOIN albums ON tracks.AlbumId = albums.AlbumId
    JOIN genres ON tracks.GenreId = genres.GenreId
    JOIN artists ON albums.ArtistId = artists.ArtistId
WHERE genres.Name = 'Rock'
GROUP BY artists.Name