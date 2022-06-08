SELECT
  ar.artist_name AS artista,
  al.album_name AS album,
  COUNT(ua.artist_id) AS seguidores
FROM SpotifyClone.artists AS ar

INNER JOIN SpotifyClone.albums AS al
ON ar.artist_id = al.artist_id

INNER JOIN SpotifyClone.user_artists AS ua
ON ar.artist_id = ua.artist_id

GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;