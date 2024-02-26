-- Query 5
-- What are the names of the artists who made an album containing 
-- the substring "symphony" in the album title?

SELECT  Name
  FROM artists 
    JOIN albums ON artists.ArtistId = albums.ArtistId
    WHERE Title LIKE "%symphony%"
