SELECT song_name AS nome_musica,
  CASE
	  WHEN song_name LIKE '%Streets%' THEN REPLACE(song_name, 'Streets', 'Code Review')
    WHEN song_name LIKE '%Her Own%' THEN REPLACE(song_name, 'Her Own', 'Trybe')
    WHEN song_name LIKE '%Inner Fire%' THEN REPLACE(song_name, 'Inner Fire', 'Project')
    WHEN song_name LIKE '%Silly%' THEN REPLACE(song_name, 'Silly', 'Nice')
    WHEN song_name LIKE '%Circus%' THEN REPLACE(song_name, 'Circus', 'Pull Request')
	END AS novo_nome
FROM SpotifyClone.cancoes

HAVING novo_nome IS NOT NULL
ORDER BY song_name ASC;