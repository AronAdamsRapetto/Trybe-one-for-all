SELECT ar.artista, al.album, COUNT(us_ar.usuario_id) AS `seguidores` FROM SpotifyClone.artistas AS ar
RIGHT JOIN SpotifyClone.usuario_artista AS us_ar ON us_ar.artista_id = ar.artista_id
RIGHT JOIN SpotifyClone.albuns AS al ON ar.artista_id = al.artista_id
GROUP BY ar.artista, al.album
ORDER BY seguidores DESC, ar.artista, al.album;