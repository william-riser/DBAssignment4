-- How many artists published at least 10 MPEG tracks?

SELECT COUNT(*) AS Total
FROM (
SELECT artists.ArtistId, COUNT(*) AS num_tracks
FROM tracks
 JOIN albums ON albums.AlbumId = tracks.AlbumId
    JOIN artists ON albums.ArtistId = artists.ArtistId
WHERE tracks.MediaTypeId = 1
GROUP BY artists.ArtistId
HAVING num_tracks >= 10;
) 