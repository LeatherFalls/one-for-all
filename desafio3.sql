SELECT
  u.user_name AS usuario,
  COUNT(uh.user_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(s.song_duration / 60), 2) AS total_minutos
FROM SpotifyClone.users AS u

INNER JOIN SpotifyClone.user_history AS uh ON u.user_id = uh.user_id
INNER JOIN SpotifyClone.songs AS s ON uh.song_id = s.song_id
GROUP BY u.user_name ORDER BY user_name ASC;