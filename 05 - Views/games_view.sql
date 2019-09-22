ALTER VIEW games_cost AS 
	SELECT DISTINCT TOP(5) g.t_id, g.nazwa, (ISNULL(p.koszt,0) + ISNULL(w.koszt,0) + ISNULL(po.koszt,0) + ISNULL(pr.koszt,0)) AS koszt_gry FROM target.dbo.gra g
	LEFT JOIN target.dbo.t_key_gra k ON k.t_id = g.t_id
	LEFT JOIN target.dbo.produkcja p ON p.id_gra = k.t_value
	LEFT JOIN target.dbo.wydanie w ON w.id_gra = k.t_value
	LEFT JOIN target.dbo.promocja pr ON pr.id_gra = k.t_value
	LEFT JOIN target.dbo.poprawka po ON po.id_gra = k.t_value
	Where (w.koszt IS NOT NULL OR p.koszt IS NOT NULL OR po.koszt IS NOT NULL OR pr.koszt IS NOT NULL)
	ORDER BY koszt_gry DESC;

SELECT * FROM games_cost;