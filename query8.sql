-- Query 8: What is the total length of each playlist in hours? 
-- List the playlist id and name of only those playlists that are longer than 2 hours, 
-- along with the length in hours rounded to two decimals.

-- All playlists lengths
SELECT PlaylistId, playlists.name, ROUND(SUM(milliseconds) / 1000 / 60 / 60, 2) AS hours
FROM playlists
    JOIN playlist_track USING (playlistid)
    JOIN tracks USING (trackid)
GROUP BY playlistid
ORDER BY hours DESC;


-- Playlists longer than 2 hours
SELECT PlaylistId, playlists.name, ROUND(SUM(milliseconds) / 1000 / 60 / 60, 2) AS hours
FROM playlists
    JOIN playlist_track USING (playlistid)
    JOIN tracks USING (trackid)
GROUP BY playlistid
HAVING hours > 2
ORDER BY hours DESC;

