SELECT 
  COUNT(h.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.user_history AS h

JOIN SpotifyClone.users AS u
ON h.user_id = u.user_id

WHERE u.user_name = 'Bill'
ORDER BY quantidade_musicas_no_historico ASC;