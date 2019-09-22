Create procedure insert_to_target_facts as

--Historyzacja zmienionych
	UPDATE target.dbo.poprawka
	SET timestamp = getDate()
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_poprawka t JOIN temp.dbo.poprawka_stg s on s.id_poprawka = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.promocja
	SET timestamp = getDate()
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_promocja t JOIN temp.dbo.promocja_stg s on s.id_promocja = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.wydanie
	SET timestamp = getDate()
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_wydanie t JOIN temp.dbo.wydanie_stg s on s.id_wydanie = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.produkcja
	SET timestamp = getDate()
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_produkcja t JOIN temp.dbo.produkcja_stg s on s.id_produkcja = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.wprowadzenie_dodatku
	SET timestamp = getDate()
	WHERE t_id in (SELECT t_id FROM target.dbo.t_key_wprowadzenie_dodatku t JOIN temp.dbo.wprowadzenie_dodatku_stg s on s.id_wprowadzenie_dodatku = t.t_value) AND timestamp = '9999-12-12';

--Historyzacja usuniêtych
	UPDATE target.dbo.poprawka
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_poprawka t JOIN temp.dbo.poprawka_temp s on s.id_poprawka = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.promocja
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_promocja t JOIN temp.dbo.promocja_temp s on s.id_promocja = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.wydanie
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_wydanie t JOIN temp.dbo.wydanie_temp s on s.id_wydanie = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.produkcja
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_produkcja t JOIN temp.dbo.produkcja_temp s on s.id_produkcja = t.t_value) AND timestamp = '9999-12-12';

	UPDATE target.dbo.wprowadzenie_dodatku
	SET timestamp = getDate()
	WHERE t_id NOT IN (SELECT t_id FROM target.dbo.t_key_wprowadzenie_dodatku t JOIN temp.dbo.wprowadzenie_dodatku_temp s on s.id_wprowadzenie_dodatku = t.t_value) AND timestamp = '9999-12-12';

--Generowanie klucza
	INSERT INTO target.dbo.t_key_poprawka (t_value) SELECT id_poprawka FROM temp.dbo.poprawka_stg 
		WHERE id_poprawka NOT IN (SELECT t_value FROM target.dbo.t_key_poprawka) 
		GROUP BY id_poprawka;

	INSERT INTO target.dbo.t_key_promocja (t_value) SELECT id_promocja FROM temp.dbo.promocja_stg 
		WHERE id_promocja NOT IN (SELECT t_value FROM target.dbo.t_key_promocja) 
		GROUP BY id_promocja;

	INSERT INTO target.dbo.t_key_wydanie (t_value) SELECT id_wydanie FROM temp.dbo.wydanie_stg 
		WHERE id_wydanie NOT IN (SELECT t_value FROM target.dbo.t_key_wydanie) 
		GROUP BY id_wydanie;

	INSERT INTO target.dbo.t_key_produkcja (t_value) SELECT id_produkcja FROM temp.dbo.produkcja_stg 
		WHERE id_produkcja NOT IN (SELECT t_value FROM target.dbo.t_key_produkcja) 
		GROUP BY id_produkcja;

	INSERT INTO target.dbo.t_key_wprowadzenie_dodatku (t_value) SELECT id_wprowadzenie_dodatku FROM temp.dbo.wprowadzenie_dodatku_stg 
		WHERE id_wprowadzenie_dodatku NOT IN (SELECT t_value FROM target.dbo.t_key_wprowadzenie_dodatku) 
		GROUP BY id_wprowadzenie_dodatku;



--Insert do target
	INSERT INTO target.dbo.poprawka SELECT t.t_id, s.id_gra, s.id_wersja_poprawki, s.koszt, s.priorytet, s.source, s.timestamp FROM temp.dbo.poprawka_stg s
		JOIN target.dbo.t_key_poprawka t ON s.id_poprawka = t.t_value WHERE s.id_poprawka = t.t_value;

	INSERT INTO target.dbo.promocja SELECT t.t_id, s.id_gra, s.id_rodzaj_promocji, s.koszt, s.zasieg, s.source, s.timestamp FROM temp.dbo.promocja_stg s
		JOIN target.dbo.t_key_promocja t ON s.id_promocja = t.t_value WHERE s.id_promocja = t.t_value;

	INSERT INTO target.dbo.wydanie SELECT t.t_id, s.id_gra, s.id_platforma, s.rok_premiery, s.koszt, s.source, s.timestamp FROM temp.dbo.wydanie_stg s
		JOIN target.dbo.t_key_wydanie t ON s.id_wydanie = t.t_value WHERE s.id_wydanie = t.t_value;

	INSERT INTO target.dbo.produkcja SELECT t.t_id, s.id_studio, s.id_produkcja, s.rok_rozpoczecia, s.koszt, s.source, s.timestamp FROM temp.dbo.produkcja_stg s
		JOIN target.dbo.t_key_produkcja t ON s.id_produkcja = t.t_value WHERE s.id_produkcja = t.t_value;

	INSERT INTO target.dbo.wprowadzenie_dodatku SELECT t.t_id, s.id_dodatek, s.id_studio, s.rok_wprowadzenia, s.koszt, s.source, s.timestamp FROM temp.dbo.wprowadzenie_dodatku_stg s
		JOIN target.dbo.t_key_wprowadzenie_dodatku t ON s.id_wprowadzenie_dodatku = t.t_value WHERE s.id_wprowadzenie_dodatku = t.t_value;







































