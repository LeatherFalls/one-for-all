SELECT
  u.user_name AS usuario,
  IF(MAX(YEAR(uh.playback_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS u

INNER JOIN SpotifyClone.user_history AS uh ON u.user_id = uh.user_id
GROUP BY u.user_name ORDER BY user_name ASC;