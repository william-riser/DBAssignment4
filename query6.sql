-- Query 6: What are the names of all artists who performed MPEG (video or audio) tracks
-- in either the "Brazilian Music" or the "Grunge" playlists?

SELECT DISTINCT artists.name 
    FROM artists
        JOIN albums ON artists.artistid = albums.artistid
        JOIN tracks ON albums.albumid = tracks.albumid
        JOIN playlist_track ON tracks.trackid = playlist_track.trackid
        JOIN playlists ON playlist_track.playlistid = playlists.playlistid
        WHERE 
            playlists.name = "Brazilian Music" 
            OR 
            playlists.name = "Grunge"
            AND 
            tracks.mediaTypeId = 1;

