SELECT COUNT(DISTINCT ca.cancao) AS cancoes, COUNT(DISTINCT ar.artista) AS artistas, COUNT(DISTINCT al.album) AS albuns FROM SpotifyClone.cancoes AS ca
JOIN SpotifyClone.albuns AS al ON ca.album_id = al.album_id
JOIN SpotifyClone.artistas AS ar ON al.artista_id = ar.artista_id;