Create Procedure insert_to_stage as 

	exec sp_MSforeachtable 'TRUNCATE TABLE?';

	INSERT INTO stage.dbo.a_gra SELECT id_gra, nazwa, gatunek, cena, 1, '9999-12-12', liczba_postaci FROM advertisement.dbo.gra;
	INSERT INTO stage.dbo.a_platforma SELECT id_platforma, nazwa, liczba_graczy, 1, '9999-12-12', liczba_piratow FROM advertisement.dbo.platforma;
	INSERT INTO stage.dbo.a_poprawka SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, 1, '9999-12-12', nazwa_kodowa FROM advertisement.dbo.poprawka;
	INSERT INTO stage.dbo.a_promocja SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, 1, '9999-12-12', nazwa_kodowa FROM advertisement.dbo.promocja;
	INSERT INTO stage.dbo.a_rodzaj_promocji SELECT id_rodzaj_promocji, nazwa, grupa_docelowa, 1, '9999-12-12', liczba_skandali FROM advertisement.dbo.rodzaj_promocji;
	INSERT INTO stage.dbo.a_wersja_poprawki SELECT id_wersja_poprawki, nazwa, 1, '9999-12-12', liczba_kolizji FROM advertisement.dbo.wersja_poprawki;
	INSERT INTO stage.dbo.a_wydanie SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, 1, '9999-12-12', nazwa_kodowa FROM advertisement.dbo.wydanie;

	INSERT INTO stage.dbo.d_dodatek SELECT id_dodatek, nazwa, cena, 2, '9999-12-12', liczba_broni FROM development.dbo.dodatek;
	INSERT INTO stage.dbo.d_gra SELECT id_gra, nazwa, gatunek, cena, 2, '9999-12-12', liczba_postaci FROM development.dbo.gra;
	INSERT INTO stage.dbo.d_poprawka SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, 2, '9999-12-12', nazwa_kodowa FROM development.dbo.poprawka;
	INSERT INTO stage.dbo.d_produkcja SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, 2, '9999-12-12', nazwa_kodowa FROM development.dbo.produkcja;
	INSERT INTO stage.dbo.d_studio SELECT id_studio, nazwa, liczba_pracownikow, liczba_dzialow, 2, '9999-12-12', siedziba FROM development.dbo.studio;
	INSERT INTO stage.dbo.d_wersja_poprawki SELECT id_wersja_poprawki, nazwa, 2, '9999-12-12', liczba_kolizji FROM development.dbo.wersja_poprawki;
	INSERT INTO stage.dbo.d_wprowadzenie_dodatku SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, 2, '9999-12-12', nazwa_kodowa FROM development.dbo.wprowadzenie_dodatku;
