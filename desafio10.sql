SELECT ca.cancao AS `nome`, COUNT(hi_us.usuario_id) AS `reproducoes` FROM SpotifyClone.cancoes AS ca
JOIN SpotifyClone.historico_usuario AS hi_us ON hi_us.cancao_id = ca.cancao_id
RIGHT JOIN SpotifyClone.usuarios AS us ON us.usuario_id = hi_us.usuario_id
WHERE us.plano_id IN (1, 4)
GROUP BY ca.cancao
ORDER BY ca.cancao;
