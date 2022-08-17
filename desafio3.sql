SELECT 
us.usuario AS `usuario`, 
COUNT(hi_us.cancao_id) AS `qt_de_musicas_ouvidas`, 
ROUND(SUM(ca.duracao_segundos) / 60, 2) AS `total_minutos` 
FROM SpotifyClone.usuarios AS us
JOIN SpotifyClone.historico_usuario AS hi_us ON us.usuario_id = hi_us.usuario_id
JOIN SpotifyClone.cancoes AS ca ON ca.cancao_id = hi_us.cancao_id
GROUP BY us.usuario_id
ORDER BY us.usuario ASC;