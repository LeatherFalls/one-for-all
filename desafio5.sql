SELECT
  s.song_name AS cancao,
  COUNT(uh.song_id) AS reproducoes
FROM SpotifyClone.user_history AS uh

INNER JOIN SpotifyClone.songs AS s ON uh.song_id = s.song_id
GROUP BY cancao ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;