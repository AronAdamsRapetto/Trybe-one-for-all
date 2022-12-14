SELECT COUNT(ca.cancao_id) AS `cancoes`, COUNT(DISTINCT ar.artista_id) AS `artistas`, COUNT(DISTINCT al.album_id) AS `albuns` FROM SpotifyClone.cancoes AS ca
RIGHT JOIN SpotifyClone.albuns AS al ON ca.album_id = al.album_id
RIGHT JOIN SpotifyClone.artistas AS ar ON al.artista_id = ar.artista_id;