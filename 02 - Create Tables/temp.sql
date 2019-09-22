select id_gra, nazwa, gatunek, cena, source, timestamp into temp.dbo.gra_temp from stage.dbo.a_gra;
select id_gra, nazwa, gatunek, cena, source, timestamp into temp.dbo.gra_stg from stage.dbo.a_gra;
select id_gra, nazwa, gatunek, cena, source, timestamp into temp.dbo.gra_bad from stage.dbo.a_gra;

select id_platforma, nazwa, liczba_graczy, source, timestamp into temp.dbo.platforma_temp from stage.dbo.a_platforma;
select id_platforma, nazwa, liczba_graczy, source, timestamp into temp.dbo.platforma_stg from stage.dbo.a_platforma;
select id_platforma, nazwa, liczba_graczy, source, timestamp into temp.dbo.platforma_bad from stage.dbo.a_platforma;

select id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp  into temp.dbo.poprawka_temp from stage.dbo.a_poprawka;
select id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp into temp.dbo.poprawka_stg from stage.dbo.a_poprawka;
select id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp into temp.dbo.poprawka_bad from stage.dbo.a_poprawka;

select id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp into temp.dbo.promocja_temp from stage.dbo.a_promocja;
select id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp into temp.dbo.promocja_stg from stage.dbo.a_promocja;
select id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp into temp.dbo.promocja_bad from stage.dbo.a_promocja;

select id_rodzaj_promocji, nazwa, grupa_docelowa, source, timestamp into temp.dbo.rodzaj_promocji_temp from stage.dbo.a_rodzaj_promocji;
select id_rodzaj_promocji, nazwa, grupa_docelowa, source, timestamp into temp.dbo.rodzaj_promocji_stg from stage.dbo.a_rodzaj_promocji;
select id_rodzaj_promocji, nazwa, grupa_docelowa, source, timestamp into temp.dbo.rodzaj_promocji_bad from stage.dbo.a_rodzaj_promocji;

select id_wersja_poprawki, nazwa, source, timestamp into temp.dbo.wersja_poprawki_temp from stage.dbo.a_wersja_poprawki;
select id_wersja_poprawki, nazwa, source, timestamp into temp.dbo.wersja_poprawki_stg from stage.dbo.a_wersja_poprawki;
select id_wersja_poprawki, nazwa, source, timestamp into temp.dbo.wersja_poprawki_bad from stage.dbo.a_wersja_poprawki;

select id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp into temp.dbo.wydanie_temp from stage.dbo.a_wydanie;
select id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp into temp.dbo.wydanie_stg from stage.dbo.a_wydanie;
select id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp into temp.dbo.wydanie_bad from stage.dbo.a_wydanie;

select id_dodatek, nazwa, cena, source, timestamp into temp.dbo.dodatek_temp from stage.dbo.d_dodatek;
select id_dodatek, nazwa, cena, source, timestamp into temp.dbo.dodatek_stg from stage.dbo.d_dodatek;
select id_dodatek, nazwa, cena, source, timestamp into temp.dbo.dodatek_bad from stage.dbo.d_dodatek;

select id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp into temp.dbo.produkcja_temp from stage.dbo.d_produkcja;
select id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp into temp.dbo.produkcja_stg from stage.dbo.d_produkcja;
select id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp into temp.dbo.produkcja_bad from stage.dbo.d_produkcja;

select id_studio, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp into temp.dbo.studio_temp from stage.dbo.d_studio;
select id_studio, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp into temp.dbo.studio_stg from stage.dbo.d_studio;
select id_studio, nazwa, liczba_pracownikow, liczba_dzialow, source, timestamp into temp.dbo.studio_bad from stage.dbo.d_studio;

select id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp into temp.dbo.wprowadzenie_dodatku_temp from stage.dbo.d_wprowadzenie_dodatku;
select id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp into temp.dbo.wprowadzenie_dodatku_stg from stage.dbo.d_wprowadzenie_dodatku;
select id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp into temp.dbo.wprowadzenie_dodatku_bad from stage.dbo.d_wprowadzenie_dodatku;