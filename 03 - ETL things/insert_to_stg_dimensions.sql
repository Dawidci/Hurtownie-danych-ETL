Create procedure insert_to_stg_dimensions as

-----------------------------------------
--Nowe rekordy
-----------------------------------------
	INSERT INTO temp.dbo.gra_stg SELECT id_gra, nazwa, gatunek, cena, source, timestamp FROM temp.dbo.gra_temp WHERE id_gra IS NOT NULL
		EXCEPT SELECT k.t_value, nazwa, gatunek, cena, source, timestamp FROM target.dbo.gra t join target.dbo.t_key_gra k on t.t_id = k.t_id;

	INSERT INTO temp.dbo.platforma_stg SELECT id_platforma, nazwa, liczba_graczy, source, timestamp FROM temp.dbo.platforma_temp WHERE id_platforma IS NOT NULL
		EXCEPT SELECT k.t_value, nazwa, liczba_graczy, source, timestamp FROM target.dbo.platforma t join target.dbo.t_key_platforma k on t.t_id = k.t_id;

	INSERT INTO temp.dbo.rodzaj_promocji_stg SELECT id_rodzaj_promocji, nazwa, grupa_docelowa, source, timestamp FROM temp.dbo.rodzaj_promocji_temp WHERE id_rodzaj_promocji IS NOT NULL
		EXCEPT SELECT k.t_value, nazwa, grupa_docelowa, source, timestamp FROM target.dbo.rodzaj_promocji t join target.dbo.t_key_rodzaj_promocji k on t.t_id = k.t_id;

	INSERT INTO temp.dbo.wersja_poprawki_stg SELECT id_wersja_poprawki, nazwa, source, timestamp FROM temp.dbo.wersja_poprawki_temp WHERE id_wersja_poprawki IS NOT NULL
		EXCEPT SELECT k.t_value, nazwa, source, timestamp FROM target.dbo.wersja_poprawki t join target.dbo.t_key_wersja_poprawki k on t.t_id = k.t_id;

	INSERT INTO temp.dbo.dodatek_stg SELECT id_dodatek, nazwa, cena, source, timestamp FROM temp.dbo.dodatek_temp WHERE id_dodatek IS NOT NULL
		EXCEPT SELECT k.t_value, nazwa, cena, source, timestamp FROM target.dbo.dodatek t join target.dbo.t_key_dodatek k on t.t_id = k.t_id;

	INSERT INTO temp.dbo.studio_stg SELECT id_studio, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp FROM temp.dbo.studio_temp WHERE id_studio IS NOT NULL
		EXCEPT SELECT k.t_value, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp FROM target.dbo.studio t join target.dbo.t_key_studio k on t.t_id = k.t_id;
-----------------------------------------
--Zmiana wartoœci
-----------------------------------------
	INSERT INTO temp.dbo.gra_stg SELECT id_gra, d.nazwa, d.gatunek, d.cena, d.source, d.timestamp FROM temp.dbo.gra_temp d 
		JOIN target.dbo.gra t on d.id_gra = t.t_id
		LEFT JOIN target.dbo.t_key_gra k on t.t_id = k.t_id WHERE k.t_id IS NULL
		EXCEPT SELECT k.t_value, nazwa, gatunek, cena, source, timestamp FROM target.dbo.gra t join target.dbo.t_key_gra k on t.t_id = k.t_id;

	INSERT INTO temp.dbo.platforma_stg SELECT id_platforma, d.nazwa, d.liczba_graczy, d.source, d.timestamp FROM temp.dbo.platforma_temp d
		JOIN target.dbo.platforma t on d.id_platforma = t.t_id
		LEFT JOIN target.dbo.t_key_platforma k on t.t_id = k.t_id WHERE k.t_id IS NULL
		EXCEPT SELECT k.t_value, nazwa, liczba_graczy, source, timestamp FROM target.dbo.platforma t join target.dbo.t_key_platforma k on t.t_id = k.t_id;

	INSERT INTO temp.dbo.rodzaj_promocji_stg SELECT id_rodzaj_promocji, d.nazwa, d.grupa_docelowa, d.source, d.timestamp FROM temp.dbo.rodzaj_promocji_temp d
		JOIN target.dbo.rodzaj_promocji t on d.id_rodzaj_promocji = t.t_id
		LEFT JOIN target.dbo.t_key_rodzaj_promocji k on t.t_id = k.t_id WHERE k.t_id IS NULL
		EXCEPT SELECT k.t_value, nazwa, grupa_docelowa, source, timestamp FROM target.dbo.rodzaj_promocji t join target.dbo.t_key_rodzaj_promocji k on t.t_id = k.t_id;

	INSERT INTO temp.dbo.wersja_poprawki_stg SELECT id_wersja_poprawki, d.nazwa, d.source, d.timestamp FROM temp.dbo.wersja_poprawki_temp d
		JOIN target.dbo.wersja_poprawki t on d.id_wersja_poprawki = t.t_id 
		LEFT JOIN target.dbo.t_key_wersja_poprawki k on t.t_id = k.t_id WHERE k.t_id IS NULL
		EXCEPT SELECT k.t_value, nazwa, source, timestamp FROM target.dbo.wersja_poprawki t join target.dbo.t_key_wersja_poprawki k on t.t_id = k.t_id;

	INSERT INTO temp.dbo.dodatek_stg SELECT id_dodatek, d.nazwa, d.cena, d.source, d.timestamp FROM temp.dbo.dodatek_temp d
		JOIN target.dbo.dodatek t on d.id_dodatek = t.t_id
		LEFT JOIN target.dbo.t_key_dodatek k on t.t_id = k.t_id WHERE k.t_id IS NULL
		EXCEPT SELECT k.t_value, nazwa, cena, source, timestamp FROM target.dbo.dodatek t join target.dbo.t_key_dodatek k on t.t_id = k.t_id;

	INSERT INTO temp.dbo.studio_stg SELECT id_studio, d.nazwa, d.liczba_pracownikow, d.liczba_dzialow, d.source, d.timestamp FROM temp.dbo.studio_temp d
		JOIN target.dbo.studio t on d.id_studio = t.t_id
		LEFT JOIN target.dbo.t_key_studio k on t.t_id = k.t_id WHERE k.t_id IS NULL
		EXCEPT SELECT k.t_value, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp FROM target.dbo.studio t join target.dbo.t_key_studio k on t.t_id = k.t_id;
-----------------------------------------
--Takie same jak w TARGET
-----------------------------------------
	INSERT INTO temp.dbo.gra_bad SELECT id_gra, nazwa, gatunek, cena, source, timestamp FROM temp.dbo.gra_temp
		INTERSECT SELECT k.t_value, nazwa, gatunek, cena, source, timestamp FROM target.dbo.gra t join target.dbo.t_key_gra k on t.t_id = k.t_id
		EXCEPT SELECT id_gra, nazwa, gatunek, cena, source, timestamp FROM temp.dbo.gra_bad;

	INSERT INTO temp.dbo.platforma_bad SELECT id_platforma, nazwa, liczba_graczy, source, timestamp FROM temp.dbo.platforma_temp
		INTERSECT SELECT k.t_value, nazwa, liczba_graczy, source, timestamp FROM target.dbo.platforma t join target.dbo.t_key_platforma k on t.t_id = k.t_id
		EXCEPT SELECT id_platforma, nazwa, liczba_graczy, source, timestamp FROM temp.dbo.platforma_bad;

	INSERT INTO temp.dbo.rodzaj_promocji_bad SELECT id_rodzaj_promocji, nazwa, grupa_docelowa, source, timestamp FROM temp.dbo.rodzaj_promocji_temp
		INTERSECT SELECT k.t_value, nazwa, grupa_docelowa, source, timestamp FROM target.dbo.rodzaj_promocji t join target.dbo.t_key_rodzaj_promocji k on t.t_id = k.t_id
		EXCEPT SELECT id_rodzaj_promocji, nazwa, grupa_docelowa, source, timestamp FROM temp.dbo.rodzaj_promocji_bad;

	INSERT INTO temp.dbo.wersja_poprawki_bad SELECT id_wersja_poprawki, nazwa, source, timestamp FROM temp.dbo.wersja_poprawki_temp
		INTERSECT SELECT k.t_value, nazwa, source, timestamp FROM target.dbo.wersja_poprawki t join target.dbo.t_key_wersja_poprawki k on t.t_id = k.t_id
		EXCEPT SELECT id_wersja_poprawki, nazwa, source, timestamp FROM temp.dbo.wersja_poprawki_bad;

	INSERT INTO temp.dbo.dodatek_bad SELECT id_dodatek, nazwa, cena, source, timestamp FROM temp.dbo.dodatek_temp
		INTERSECT SELECT k.t_value, nazwa, cena, source, timestamp FROM target.dbo.dodatek t join target.dbo.t_key_dodatek k on t.t_id = k.t_id
		EXCEPT SELECT id_dodatek, nazwa, cena, source, timestamp FROM temp.dbo.dodatek_bad;

	INSERT INTO temp.dbo.studio_bad SELECT id_studio, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp FROM temp.dbo.studio_temp
		INTERSECT SELECT k.t_value, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp FROM target.dbo.studio t join target.dbo.t_key_studio k on t.t_id = k.t_id
		EXCEPT SELECT id_studio, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp FROM temp.dbo.studio_bad;
----------------------------------------
--Klucze z nullem
----------------------------------------
	INSERT INTO temp.dbo.gra_bad SELECT id_gra, nazwa, gatunek, cena, source, timestamp FROM temp.dbo.gra_temp WHERE id_gra IS NULL
		EXCEPT SELECT id_gra, nazwa, gatunek, cena, source, timestamp FROM temp.dbo.gra_bad;

	INSERT INTO temp.dbo.platforma_bad SELECT id_platforma, nazwa, liczba_graczy, source, timestamp FROM temp.dbo.platforma_temp WHERE id_platforma IS NULL
		EXCEPT SELECT id_platforma, nazwa, liczba_graczy, source, timestamp FROM temp.dbo.platforma_bad;

	INSERT INTO temp.dbo.rodzaj_promocji_bad SELECT id_rodzaj_promocji, nazwa, grupa_docelowa, source, timestamp FROM temp.dbo.rodzaj_promocji_temp WHERE id_rodzaj_promocji IS NULL
		EXCEPT SELECT id_rodzaj_promocji, nazwa, grupa_docelowa, source, timestamp FROM temp.dbo.rodzaj_promocji_bad;

	INSERT INTO temp.dbo.wersja_poprawki_bad SELECT id_wersja_poprawki, nazwa, source, timestamp FROM temp.dbo.wersja_poprawki_temp WHERE id_wersja_poprawki IS NULL
		EXCEPT SELECT id_wersja_poprawki, nazwa, source, timestamp FROM temp.dbo.wersja_poprawki_bad;

	INSERT INTO temp.dbo.dodatek_bad SELECT id_dodatek, nazwa, cena, source, timestamp FROM temp.dbo.dodatek_temp WHERE id_dodatek IS NULL
		EXCEPT SELECT id_dodatek, nazwa, cena, source, timestamp FROM temp.dbo.dodatek_bad;

	INSERT INTO temp.dbo.studio_bad SELECT id_studio, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp FROM temp.dbo.studio_temp WHERE id_studio IS NULL
		EXCEPT SELECT id_studio, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp FROM temp.dbo.studio_bad;
------------------------------------------

