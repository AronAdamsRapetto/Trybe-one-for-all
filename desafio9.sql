SELECT COUNT(hi_us.usuario_id) AS `quantidade_musicas_no_historico` FROM SpotifyClone.usuarios AS us
JOIN SpotifyClone.historico_usuario AS hi_us ON us.usuario_id = hi_us.usuario_id
WHERE usuario = 'Barbara Liskov';