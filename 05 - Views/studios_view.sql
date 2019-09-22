ALTER VIEW studios_condition AS
	SELECT s.t_id, s.nazwa, Count(p.t_id) AS no_games, SUM(p.koszt) as games_cost, Count(w.t_id) AS no_adds, SUM(w.koszt) as adds_cost FROM target.dbo.studio s
	LEFT JOIN target.dbo.t_key_studio k ON k.t_id = s.t_id
	LEFT JOIN target.dbo.produkcja p ON p.id_studio = k.t_value
	LEFT JOIN target.dbo.wprowadzenie_dodatku w ON w.id_studio = k.t_value
	Group by s.t_id, s.nazwa;

SELECT * FROM studios_condition;