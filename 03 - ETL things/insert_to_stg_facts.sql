create procedure insert_to_stg_facts as

--FROM STG - JOIN WITH DIMENSIONS AND NOT NULL
INSERT INTO temp.dbo.poprawka_stg SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM temp.dbo.poprawka_temp t
	JOIN target.dbo.t_key_gra k on t.id_gra = k.t_value
	JOIN target.dbo.t_key_wersja_poprawki l on t.id_wersja_poprawki = l.t_value
	EXCEPT SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM temp.dbo.poprawka_stg
	EXCEPT SELECT m.t_value, n.id_gra, n.id_wersja_poprawki, n.koszt, n.priorytet, n.source, n.timestamp FROM target.dbo.poprawka n
	JOIN target.dbo.t_key_poprawka m on n.t_id = m.t_id;

INSERT INTO temp.dbo.promocja_stg SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM temp.dbo.promocja_temp t
	JOIN target.dbo.t_key_gra k on t.id_gra = k.t_value
	JOIN target.dbo.t_key_rodzaj_promocji l on t.id_rodzaj_promocji = l.t_value
	EXCEPT SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM temp.dbo.promocja_stg
	EXCEPT SELECT m.t_value, n.id_gra, n.id_rodzaj_promocji, n.koszt, n.zasieg, n.source, n.timestamp FROM target.dbo.promocja n
	JOIN target.dbo.t_key_promocja m on n.t_id = m.t_id;

INSERT INTO temp.dbo.wydanie_stg SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM temp.dbo.wydanie_temp t
	JOIN target.dbo.t_key_gra k on t.id_gra = k.t_value
	JOIN target.dbo.t_key_platforma l on t.id_platforma = l.t_value
	EXCEPT SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM temp.dbo.wydanie_stg
	EXCEPT SELECT m.t_value, n.id_gra, n.id_platforma, n.rok_premiery, n.koszt, n.source, n.timestamp FROM target.dbo.wydanie n
	JOIN target.dbo.t_key_wydanie m on n.t_id = m.t_id;

INSERT INTO temp.dbo.produkcja_stg SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM temp.dbo.produkcja_temp t
	JOIN target.dbo.t_key_studio k on t.id_studio = k.t_value
	JOIN target.dbo.t_key_gra l on t.id_gra = l.t_value
	EXCEPT SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM temp.dbo.produkcja_stg
	EXCEPT SELECT m.t_value, n.id_studio, n.id_gra, n.rok_rozpoczecia, n.koszt, n.source, n.timestamp FROM target.dbo.produkcja n
	JOIN target.dbo.t_key_produkcja m on n.t_id = m.t_id;

INSERT INTO temp.dbo.wprowadzenie_dodatku_stg SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM temp.dbo.wprowadzenie_dodatku_temp t
	JOIN target.dbo.t_key_dodatek k on t.id_dodatek = k.t_value
	JOIN target.dbo.t_key_studio l on t.id_studio = l.t_value
	EXCEPT SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM temp.dbo.wprowadzenie_dodatku_stg
	EXCEPT SELECT m.t_value, n.id_dodatek, n.id_studio, n.rok_wprowadzenia, n.koszt, n.source, n.timestamp FROM target.dbo.wprowadzenie_dodatku n
	JOIN target.dbo.t_key_wprowadzenie_dodatku m on n.t_id = m.t_id;


--FROM BAD - JOIN WITH DIMENSIONS
INSERT INTO temp.dbo.poprawka_stg SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM temp.dbo.poprawka_bad t
	JOIN target.dbo.t_key_gra k on t.id_gra = k.t_value
	JOIN target.dbo.t_key_wersja_poprawki l on t.id_wersja_poprawki = l.t_value
	EXCEPT SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM temp.dbo.poprawka_stg
	EXCEPT SELECT m.t_value, n.id_gra, n.id_wersja_poprawki, n.koszt, n.priorytet, n.source, n.timestamp FROM target.dbo.poprawka n
	JOIN target.dbo.t_key_poprawka m on n.t_id = m.t_id;

INSERT INTO temp.dbo.promocja_stg SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM temp.dbo.promocja_bad t
	JOIN target.dbo.t_key_gra k on t.id_gra = k.t_value
	JOIN target.dbo.t_key_rodzaj_promocji l on t.id_rodzaj_promocji = l.t_value
	EXCEPT SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM temp.dbo.promocja_stg
	EXCEPT SELECT m.t_value, n.id_gra, n.id_rodzaj_promocji, n.koszt, n.zasieg, n.source, n.timestamp FROM target.dbo.promocja n
	JOIN target.dbo.t_key_promocja m on n.t_id = m.t_id;

INSERT INTO temp.dbo.wydanie_stg SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM temp.dbo.wydanie_bad t
	JOIN target.dbo.t_key_gra k on t.id_gra = k.t_value
	JOIN target.dbo.t_key_platforma l on t.id_platforma = l.t_value
	EXCEPT SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM temp.dbo.wydanie_stg
	EXCEPT SELECT m.t_value, n.id_gra, n.id_platforma, n.rok_premiery, n.koszt, n.source, n.timestamp FROM target.dbo.wydanie n
	JOIN target.dbo.t_key_wydanie m on n.t_id = m.t_id;

INSERT INTO temp.dbo.produkcja_stg SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM temp.dbo.produkcja_bad t
	JOIN target.dbo.t_key_studio k on t.id_studio = k.t_value
	JOIN target.dbo.t_key_gra l on t.id_gra = l.t_value
	EXCEPT SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM temp.dbo.produkcja_stg
	EXCEPT SELECT m.t_value, n.id_studio, n.id_gra, n.rok_rozpoczecia, n.koszt, n.source, n.timestamp FROM target.dbo.produkcja n
	JOIN target.dbo.t_key_produkcja m on n.t_id = m.t_id;

INSERT INTO temp.dbo.wprowadzenie_dodatku_stg SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM temp.dbo.wprowadzenie_dodatku_bad t
	JOIN target.dbo.t_key_dodatek k on t.id_dodatek = k.t_value
	JOIN target.dbo.t_key_studio l on t.id_studio = l.t_value
	EXCEPT SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM temp.dbo.wprowadzenie_dodatku_stg
	EXCEPT SELECT m.t_value, n.id_dodatek, n.id_studio, n.rok_wprowadzenia, n.koszt, n.source, n.timestamp FROM target.dbo.wprowadzenie_dodatku n
	JOIN target.dbo.t_key_wprowadzenie_dodatku m on n.t_id = m.t_id;

--DELETE FROM BAD WHERE IN STG
DELETE FROM temp.dbo.poprawka_bad 
	WHERE id_poprawka IN (SELECT id_poprawka FROM temp.dbo.poprawka_bad INTERSECT SELECT id_poprawka FROM temp.dbo.poprawka_stg);

DELETE FROM temp.dbo.promocja_bad 
	WHERE id_promocja IN (SELECT id_promocja FROM temp.dbo.promocja_bad INTERSECT SELECT id_promocja FROM temp.dbo.promocja_stg);

DELETE FROM temp.dbo.wydanie_bad 
	WHERE id_wydanie IN (SELECT id_wydanie FROM temp.dbo.wydanie_bad INTERSECT SELECT id_wydanie FROM temp.dbo.wydanie_stg);

DELETE FROM temp.dbo.produkcja_bad 
	WHERE id_produkcja IN (SELECT id_produkcja FROM temp.dbo.produkcja_bad INTERSECT SELECT id_produkcja FROM temp.dbo.produkcja_stg);

DELETE FROM temp.dbo.wprowadzenie_dodatku_bad 
	WHERE id_wprowadzenie_dodatku IN (SELECT id_wprowadzenie_dodatku FROM temp.dbo.wprowadzenie_dodatku_bad INTERSECT SELECT id_wprowadzenie_dodatku FROM temp.dbo.wprowadzenie_dodatku_stg);


--ALREADY IN TARGET, SO IT GOES TO BAD
INSERT INTO temp.dbo.poprawka_bad SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM temp.dbo.poprawka_temp
	INTERSECT SELECT t.t_value, s.id_gra, s.id_wersja_poprawki, s.koszt, s.priorytet, s.source, s.timestamp FROM target.dbo.poprawka s
	JOIN target.dbo.t_key_poprawka t ON s.t_id = s.t_id
	EXCEPT SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM temp.dbo.poprawka_bad;

INSERT INTO temp.dbo.promocja_bad SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM temp.dbo.promocja_temp
	INTERSECT SELECT t.t_value, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM target.dbo.promocja s
	JOIN target.dbo.t_key_promocja t ON s.t_id = s.t_id
	EXCEPT SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM temp.dbo.promocja_bad;

INSERT INTO temp.dbo.wydanie_bad SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM temp.dbo.wydanie_temp
	INTERSECT SELECT t.t_value, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM target.dbo.wydanie s
	JOIN target.dbo.t_key_wydanie t ON s.t_id = s.t_id
	EXCEPT SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM temp.dbo.wydanie_bad;

INSERT INTO temp.dbo.produkcja_bad SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM temp.dbo.produkcja_temp
	INTERSECT SELECT t.t_value, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM target.dbo.produkcja s
	JOIN target.dbo.t_key_produkcja t ON s.t_id = s.t_id
	EXCEPT SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM temp.dbo.produkcja_bad;

INSERT INTO temp.dbo.wprowadzenie_dodatku_bad SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM temp.dbo.wprowadzenie_dodatku_temp
	INTERSECT SELECT t.t_value, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM target.dbo.wprowadzenie_dodatku s
	JOIN target.dbo.t_key_wprowadzenie_dodatku t ON s.t_id = s.t_id
	EXCEPT SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM temp.dbo.wprowadzenie_dodatku_bad;


--KEY IS NULL
INSERT INTO temp.dbo.poprawka_bad SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM temp.dbo.poprawka_temp WHERE id_poprawka IS NULL
	EXCEPT SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM temp.dbo.poprawka_bad;

INSERT INTO temp.dbo.promocja_bad SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM temp.dbo.promocja_temp WHERE id_promocja IS NULL
	EXCEPT SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM temp.dbo.promocja_bad;

INSERT INTO temp.dbo.wydanie_bad SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM temp.dbo.wydanie_temp WHERE id_wydanie IS NULL
	EXCEPT SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM temp.dbo.wydanie_bad;

INSERT INTO temp.dbo.produkcja_bad SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM temp.dbo.produkcja_temp WHERE id_produkcja IS NULL
	EXCEPT SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM temp.dbo.produkcja_bad;

INSERT INTO temp.dbo.wprowadzenie_dodatku_bad SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM temp.dbo.wprowadzenie_dodatku_temp WHERE id_wprowadzenie_dodatku IS NULL
	EXCEPT SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM temp.dbo.wprowadzenie_dodatku_bad;


--WITHOUT DIMENSIONS
INSERT INTO temp.dbo.poprawka_bad SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM temp.dbo.poprawka_temp t
	LEFT JOIN target.dbo.t_key_gra k on t.id_gra = k.t_value
	LEFT JOIN target.dbo.t_key_wersja_poprawki l on t.id_wersja_poprawki = l.t_value
	WHERE k.t_value IS NULL OR l.t_value IS NULL
	EXCEPT SELECT id_poprawka, id_gra, id_wersja_poprawki, koszt, priorytet, source, timestamp FROM temp.dbo.poprawka_bad;

INSERT INTO temp.dbo.promocja_bad SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM temp.dbo.promocja_temp t
	LEFT JOIN target.dbo.t_key_gra k on t.id_gra = k.t_value
	LEFT JOIN target.dbo.t_key_rodzaj_promocji l on t.id_rodzaj_promocji = l.t_value
	WHERE k.t_value IS NULL OR l.t_value IS NULL
	EXCEPT SELECT id_promocja, id_gra, id_rodzaj_promocji, koszt, zasieg, source, timestamp FROM temp.dbo.promocja_bad;

INSERT INTO temp.dbo.wydanie_bad SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM temp.dbo.wydanie_temp t
	LEFT JOIN target.dbo.t_key_gra k on t.id_gra = k.t_value
	LEFT JOIN target.dbo.t_key_platforma l on t.id_platforma = l.t_value
	WHERE k.t_value IS NULL OR l.t_value IS NULL
	EXCEPT SELECT id_wydanie, id_gra, id_platforma, rok_premiery, koszt, source, timestamp FROM temp.dbo.wydanie_bad;

INSERT INTO temp.dbo.produkcja_bad SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM temp.dbo.produkcja_temp t
	LEFT JOIN target.dbo.t_key_studio k on t.id_studio = k.t_value
	LEFT JOIN target.dbo.t_key_gra l on t.id_gra = l.t_value
	WHERE k.t_value IS NULL OR l.t_value IS NULL
	EXCEPT SELECT id_produkcja, id_studio, id_gra, rok_rozpoczecia, koszt, source, timestamp FROM temp.dbo.produkcja_bad;

INSERT INTO temp.dbo.wprowadzenie_dodatku_bad SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM temp.dbo.wprowadzenie_dodatku_temp t
	LEFT JOIN target.dbo.t_key_dodatek k on t.id_dodatek = k.t_value
	LEFT JOIN target.dbo.t_key_studio l on t.id_studio = l.t_value
	WHERE k.t_value IS NULL OR l.t_value IS NULL
	EXCEPT SELECT id_wprowadzenie_dodatku, id_dodatek, id_studio, rok_wprowadzenia, koszt, source, timestamp FROM temp.dbo.wprowadzenie_dodatku_bad;