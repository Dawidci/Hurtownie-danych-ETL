Create procedure insert_to_target_dimensions as

--Historyzacja zmienionych
	UPDATE target.dbo.gra
	SET timestamp = getDate()
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_gra t JOIN temp.dbo.gra_stg s on s.id_gra = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.platforma
	SET timestamp = getDate()
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_platforma t JOIN temp.dbo.platforma_stg s on s.id_platforma = t.t_value) AND timestamp = '9999-12-12';
	
	UPDATE target.dbo.rodzaj_promocji
	SET timestamp = getDate() 
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_rodzaj_promocji t JOIN temp.dbo.rodzaj_promocji_stg s on s.id_rodzaj_promocji = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.wersja_poprawki
	SET timestamp = getDate()
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_wersja_poprawki t JOIN temp.dbo.wersja_poprawki_stg s on s.id_wersja_poprawki = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.dodatek
	SET timestamp = getDate()
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_dodatek t JOIN temp.dbo.dodatek_stg s on s.id_dodatek = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.studio
	SET timestamp = getDate()
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_studio t JOIN temp.dbo.studio_stg s on s.id_studio = t.t_value) AND timestamp = '9999-12-12';

--Historyzacja usuniêtych
	UPDATE target.dbo.gra
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_gra t JOIN temp.dbo.gra_temp s on s.id_gra = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.platforma
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_platforma t JOIN temp.dbo.platforma_temp s on s.id_platforma = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.rodzaj_promocji
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_rodzaj_promocji t JOIN temp.dbo.rodzaj_promocji_temp s on s.id_rodzaj_promocji = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.wersja_poprawki
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_wersja_poprawki t JOIN temp.dbo.wersja_poprawki_temp s on s.id_wersja_poprawki = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.dodatek
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_dodatek t JOIN temp.dbo.dodatek_temp s on s.id_dodatek = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.studio
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_studio t JOIN temp.dbo.studio_temp s on s.id_studio = t.t_value) AND timestamp = '9999-12-12';
	

--Generowanie klucza
	INSERT INTO target.dbo.t_key_gra (t_value) SELECT id_gra FROM temp.dbo.gra_stg 
		WHERE id_gra NOT IN (SELECT t_value FROM target.dbo.t_key_gra) 
		GROUP BY id_gra;

	INSERT INTO target.dbo.t_key_platforma (t_value) SELECT id_platforma FROM temp.dbo.platforma_stg 
		WHERE id_platforma NOT IN (SELECT t_value FROM target.dbo.t_key_platforma) 
		GROUP BY id_platforma;

	INSERT INTO target.dbo.t_key_rodzaj_promocji (t_value) SELECT id_rodzaj_promocji FROM temp.dbo.rodzaj_promocji_stg 
		WHERE id_rodzaj_promocji NOT IN (SELECT t_value FROM target.dbo.t_key_rodzaj_promocji) 
		GROUP BY id_rodzaj_promocji;

	INSERT INTO target.dbo.t_key_wersja_poprawki (t_value) SELECT id_wersja_poprawki FROM temp.dbo.wersja_poprawki_stg 
		WHERE id_wersja_poprawki NOT IN (SELECT t_value FROM target.dbo.t_key_wersja_poprawki) 
		GROUP BY id_wersja_poprawki;

	INSERT INTO target.dbo.t_key_dodatek (t_value) SELECT id_dodatek FROM temp.dbo.dodatek_stg 
		WHERE id_dodatek NOT IN (SELECT t_value FROM target.dbo.t_key_dodatek) 
		GROUP BY id_dodatek;

	INSERT INTO target.dbo.t_key_studio (t_value) SELECT id_studio FROM temp.dbo.studio_stg 
		WHERE id_studio NOT IN (SELECT t_value FROM target.dbo.t_key_studio) 
		GROUP BY id_studio;


--Insert do target
	INSERT INTO target.dbo.gra SELECT t.t_id, s.nazwa, s.gatunek, s.cena, s.source, s.timestamp FROM temp.dbo.gra_stg s
		JOIN target.dbo.t_key_gra t ON s.id_gra = t.t_value WHERE s.id_gra = t.t_value;

	INSERT INTO target.dbo.platforma SELECT t.t_id, s.nazwa, s.liczba_graczy, s.source, s.timestamp FROM temp.dbo.platforma_stg s
		JOIN target.dbo.t_key_platforma t ON s.id_platforma = t.t_value WHERE s.id_platforma = t.t_value;

	INSERT INTO target.dbo.rodzaj_promocji SELECT t.t_id, s.nazwa, s.grupa_docelowa, s.source, s.timestamp FROM temp.dbo.rodzaj_promocji_stg s
		JOIN target.dbo.t_key_rodzaj_promocji t ON s.id_rodzaj_promocji = t.t_value WHERE s.id_rodzaj_promocji = t.t_value;

	INSERT INTO target.dbo.wersja_poprawki SELECT t.t_id, s.nazwa, s.source, s.timestamp FROM temp.dbo.wersja_poprawki_stg s
		JOIN target.dbo.t_key_wersja_poprawki t ON s.id_wersja_poprawki = t.t_value WHERE s.id_wersja_poprawki = t.t_value;

	INSERT INTO target.dbo.dodatek SELECT t.t_id, s.nazwa, s.cena, s.source, s.timestamp FROM temp.dbo.dodatek_stg s
		JOIN target.dbo.t_key_dodatek t ON s.id_dodatek = t.t_value WHERE s.id_dodatek = t.t_value;

	INSERT INTO target.dbo.studio SELECT t.t_id, s.nazwa, s.liczba_pracownikow, s.liczba_dzialow, s.source, s.timestamp FROM temp.dbo.studio_stg s
		JOIN target.dbo.t_key_studio t ON s.id_studio = t.t_value WHERE s.id_studio = t.t_value;
