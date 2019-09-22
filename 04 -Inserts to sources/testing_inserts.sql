--Brakuj¹ce wymiary
INSERT INTO development.dbo.poprawka VALUES (10, 10, 10, 'AJ', 131, 313);
INSERT INTO development.dbo.gra VALUES (10, 'New', 'Shooter', 134, 1213);
INSERT INTO development.dbo.wersja_poprawki VALUES (10, 'Revision 10', 331);

--Historyzacja starego rekordu
UPDATE development.dbo.wprowadzenie_dodatku 
SET rok_wprowadzenia = 2020, koszt = 9999
WHERE id_dodatek = 110;

--Historyzacja usuniêtego rekordu
DELETE FROM development.dbo.produkcja WHERE id_gra = 110;
INSERT INTO development.dbo.produkcja VALUES (110, 102, 110, 'New One', 2022, 1335);

--Null w tablicy
INSERT INTO development.dbo.produkcja VALUES (10, null, 10, 'Project Grom', 2011, 123);

UPDATE development.dbo.produkcja
SET id_studio = 10
WHERE id_produkcja = 10;

INSERT INTO development.dbo.studio VALUES (10, 'Smol', 132, 16, 'Tybet');

--Poprawka
select * from development.dbo.poprawka;
select * from stage.dbo.d_poprawka;

select * from temp.dbo.poprawka_temp;
select * from temp.dbo.poprawka_stg;
select * from temp.dbo.poprawka_bad;

select * from target.dbo.poprawka;

--Wprowadzenie dodatku
select * from development.dbo.wprowadzenie_dodatku;
select * from stage.dbo.d_wprowadzenie_dodatku;

select * from temp.dbo.wprowadzenie_dodatku_temp;
select * from temp.dbo.wprowadzenie_dodatku_stg;
select * from temp.dbo.wprowadzenie_dodatku_bad;

select * from target.dbo.wprowadzenie_dodatku;

--Produkcja
select * from development.dbo.produkcja;
select * from stage.dbo.d_produkcja;

select * from temp.dbo.produkcja_temp;
select * from temp.dbo.produkcja_stg;
select * from temp.dbo.produkcja_bad;

select * from target.dbo.produkcja;