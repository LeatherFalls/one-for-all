SELECT 
  c.song_name AS nome, COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.songs AS c

JOIN SpotifyClone.user_history AS h
ON c.song_id = h.song_id

JOIN SpotifyClone.users AS u
ON h.user_id = u.user_id

JOIN SpotifyClone.plans AS p
ON u.plan_id = p.plan_id

WHERE u.plan_id = 1 OR u.plan_id = 4
GROUP BY nome
ORDER BY nome ASC;