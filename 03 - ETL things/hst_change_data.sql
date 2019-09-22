	Insert into metadata.dbo.hst_change (table_name, source_name, date) VALUES 
		('target.dbo.gra', '(SELECT t_id FROM target.dbo.t_key_gra t JOIN temp.dbo.gra_stg s on s.id_gra = t.t_value)', 'timestamp = "9999-12-12"'),
		('target.dbo.platforma', '(SELECT t_id FROM target.dbo.t_key_platforma t JOIN temp.dbo.platforma_stg s on s.id_platforma = t.t_value)', 'timestamp = "9999-12-12"'),
		('target.dbo.poprawka', '(SELECT t_id FROM target.dbo.t_key_poprawka t JOIN temp.dbo.poprawka_stg s on s.id_poprawka = t.t_value)', 'timestamp = "9999-12-12"'),
		('target.dbo.promocja', '(SELECT t_id FROM target.dbo.t_key_promocja t JOIN temp.dbo.promocja_stg s on s.id_promocja = t.t_value)', 'timestamp = "9999-12-12"'),
		('target.dbo.rodzaj_promocji', '(SELECT t_id FROM target.dbo.t_key_rodzaj_promocji t JOIN temp.dbo.rodzaj_promocji_stg s on s.id_rodzaj_promocji = t.t_value)', 'timestamp = "9999-12-12"'),
		('target.dbo.wersja_poprawki', '(SELECT t_id FROM target.dbo.t_key_wersja_poprawki t JOIN temp.dbo.wersja_poprawki_stg s on s.id_wersja_poprawki = t.t_value)', 'timestamp = "9999-12-12"'),
		('target.dbo.wydanie', '(SELECT t_id FROM target.dbo.t_key_wydanie t JOIN temp.dbo.wydanie_stg s on s.id_wydanie = t.t_value)', 'timestamp = "9999-12-12"'),
		('target.dbo.produkcja', '(SELECT t_id FROM target.dbo.t_key_produkcja t JOIN temp.dbo.produkcja_stg s on s.id_produkcja = t.t_value)', 'timestamp = "9999-12-12"'),
		('target.dbo.studio', '(SELECT t_id FROM target.dbo.t_key_studio t JOIN temp.dbo.studio_stg s on s.id_studio = t.t_value)', 'timestamp = "9999-12-12"'),
		('target.dbo.wersja_poprawki', '(SELECT t_id FROM target.dbo.t_key_wersja_poprawki t JOIN temp.dbo.wersja_poprawki_stg s on s.id_wersja_poprawki = t.t_value)', 'timestamp = "9999-12-12"'),
		('target.dbo.wprowadzenie_dodatku', '(SELECT t_id FROM target.dbo.t_key_wprowadzenie_dodatku t JOIN temp.dbo.wprowadzenie_dodatku_stg s on s.id_wprowadzenie_dodatku = t.t_value)', 'timestamp = "9999-12-12"')