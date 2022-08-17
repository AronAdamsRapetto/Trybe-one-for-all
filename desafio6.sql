SELECT
	MIN(pl.valor_plano) AS `faturamento_minimo`,
	MAX(pl.valor_plano) AS `faturamento_maximo`,
	ROUND(AVG(pl.valor_plano), 2) AS `faturamento_medio`,
	ROUND(SUM(pl.valor_plano), 2) AS `faturamento_total`
FROM SpotifyClone.planos AS pl
JOIN SpotifyClone.usuarios AS us ON pl.plano_id = us.plano_id;