-- Query 2:
-- What are the names of each album and the artist who created it?

SELECT 
  Title,
  artists.Name
  FROM albums
    JOIN artists ON albums.ArtistId = artists.ArtistId