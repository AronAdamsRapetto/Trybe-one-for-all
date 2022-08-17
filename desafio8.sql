SELECT ar.artista, al.album FROM SpotifyClone.artistas AS ar
JOIN SpotifyClone.albuns AS al ON ar.artista_id = al.artista_id
WHERE ar.artista = 'Elis Regina'
ORDER BY al.album;