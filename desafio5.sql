SELECT ca.cancao, COUNT(hi_us.usuario_id) AS reproducoes FROM SpotifyClone.cancoes AS ca
JOIN SpotifyClone.historico_usuario AS hi_us ON ca.cancao_id = hi_us.cancao_id
GROUP BY ca.cancao
ORDER BY reproducoes DESC, ca.cancao ASC
LIMIT 2;