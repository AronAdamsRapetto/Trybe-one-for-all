SELECT us.usuario, IF(MAX(YEAR(hi_us.data_reproducao)) < '2021', 'Usuário inativo', 'Usuário ativo') AS `status_usuario` FROM SpotifyClone.usuarios AS us
JOIN SpotifyClone.historico_usuario AS hi_us ON hi_us.usuario_id = us.usuario_id
GROUP BY hi_us.usuario_id
ORDER BY us.usuario ASC;