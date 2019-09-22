Create Procedure insert_to_temp as

	TRUNCATE TABLE dodatek_stg;
	TRUNCATE TABLE gra_stg;
	TRUNCATE TABLE platforma_stg;
	TRUNCATE TABLE poprawka_stg;
	TRUNCATE TABLE produkcja_stg;
	TRUNCATE TABLE promocja_stg;
    TRUNCATE TABLE rodzaj_promocji_stg;
	TRUNCATE TABLE studio_stg;
	TRUNCATE TABLE wersja_poprawki_stg;
	TRUNCATE TABLE wprowadzenie_dodatku_stg;
	TRUNCATE TABLE wydanie_stg;

	TRUNCATE TABLE dodatek_temp;
	TRUNCATE TABLE gra_temp;
	TRUNCATE TABLE platforma_temp;
	TRUNCATE TABLE poprawka_temp;
	TRUNCATE TABLE produkcja_temp;
	TRUNCATE TABLE promocja_temp;
    TRUNCATE TABLE rodzaj_promocji_temp;
	TRUNCATE TABLE studio_temp;
	TRUNCATE TABLE wersja_poprawki_temp;
	TRUNCATE TABLE wprowadzenie_dodatku_temp;
	TRUNCATE TABLE wydanie_temp;

	INSERT INTO temp.dbo.gra_temp SELECT id_gra, nazwa, gatunek, cena, source, timestamp FROM stage.dbo.a_gra;
	INSERT INTO temp.dbo.platforma_temp SELECT id_platforma, nazwa, liczba_graczy, source, timestamp FROM stage.dbo.a_platforma;
	INSERT INTO temp.dbo.poprawka_temp SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM stage.dbo.a_poprawka;
	INSERT INTO temp.dbo.promocja_temp SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM stage.dbo.a_promocja;
	INSERT INTO temp.dbo.rodzaj_promocji_temp SELECT id_rodzaj_promocji, nazwa, grupa_docelowa, source, timestamp FROM stage.dbo.a_rodzaj_promocji;
	INSERT INTO temp.dbo.wersja_poprawki_temp SELECT id_wersja_poprawki, nazwa, source, timestamp FROM stage.dbo.a_wersja_poprawki;
	INSERT INTO temp.dbo.wydanie_temp SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM stage.dbo.a_wydanie;

	INSERT INTO temp.dbo.dodatek_temp SELECT id_dodatek, nazwa, cena, source, timestamp FROM stage.dbo.d_dodatek;
	INSERT INTO temp.dbo.gra_temp SELECT id_gra, nazwa, gatunek, cena, source, timestamp FROM stage.dbo.d_gra;
	INSERT INTO temp.dbo.poprawka_temp SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM stage.dbo.d_poprawka;
	INSERT INTO temp.dbo.produkcja_temp SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM stage.dbo.d_produkcja;
	INSERT INTO temp.dbo.studio_temp SELECT id_studio, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp FROM stage.dbo.d_studio;
	INSERT INTO temp.dbo.wersja_poprawki_temp SELECT id_wersja_poprawki, nazwa, source, timestamp FROM stage.dbo.d_wersja_poprawki;
	INSERT INTO temp.dbo.wprowadzenie_dodatku_temp SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM stage.dbo.d_wprowadzenie_dodatku;