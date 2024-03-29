-- Generated by Oracle SQL Developer Data Modeler 18.4.0.339.1532
--   at:        2019-08-26 22:24:38 CEST
--   site:      SQL Server 2012
--   type:      SQL Server 2012



CREATE TABLE dodatek (
    gra_id_gra     NUMERIC(28) NOT NULL,
    id_dodatek     NUMERIC(28) NOT NULL,
    nazwa          VARCHAR(20),
    cena           NUMERIC(28),
    liczba_broni   NUMERIC(28)
)

go

CREATE TABLE gra (
    id_gra           NUMERIC(28) NOT NULL,
    nazwa            VARCHAR(20),
    gatunek          VARCHAR(20),
    cena             NUMERIC(28),
    liczba_postaci   NUMERIC(28)
)

go

CREATE TABLE platforma (
    id_platforma         NUMERIC(28) NOT NULL,
    nazwa                VARCHAR(30),
    liczba_graczy        NUMERIC(28),
    wydanie_id_wydanie   NUMERIC(28) NOT NULL,
    liczba_piratow       NUMERIC(28)
)

go

CREATE TABLE poprawka (
    id_poprawka    NUMERIC(28) NOT NULL,
    nazwa_kodowa   VARCHAR(30),
    gra_id_gra     NUMERIC(28) NOT NULL,
    koszt          NUMERIC(28),
    priorytet      NUMERIC(28)
)

go

CREATE TABLE produkcja (
    id_produkcja       NUMERIC(28) NOT NULL,
    nazwa_kodowa       VARCHAR(30),
    studio_id_studio   NUMERIC(28) NOT NULL,
    rok_rozpoczecia    NUMERIC(28),
    koszt              NUMERIC(28),
    gra_id_gra         NUMERIC(28) NOT NULL
)

go 

    
-- Index produkcja__IDX on Table produkcja not created in ddl

CREATE TABLE promocja (
    id_promocja    NUMERIC(28) NOT NULL,
    nazwa_kodowa   VARCHAR(30),
    gra_id_gra     NUMERIC(28) NOT NULL,
    koszt          NUMERIC(28),
    zasieg         NUMERIC(28)
)

go

CREATE TABLE rodzaj_promocji (
    id_promocja_1          NUMERIC(28) NOT NULL,
    nazwa                  VARCHAR(30),
    grupa_docelowa         VARCHAR(30),
    promocja_id_promocja   NUMERIC(28) NOT NULL,
    liczba_skandali        NUMERIC(28)
)

go

CREATE TABLE studio (
    id_studio            NUMERIC(28) NOT NULL,
    nazwa                VARCHAR(30),
    liczba_pracownikow   NUMERIC(28),
    liczba_dzialow       NUMERIC(28),
    siedziba             VARCHAR(30)
)

go

CREATE TABLE wersja_poprawki (
    id_wersja_poprawki     NUMERIC(28) NOT NULL,
    nazwa                  VARCHAR(30),
    poprawka_id_poprawka   NUMERIC(28) NOT NULL,
    liczba_kolizji         NUMERIC(28)
)

go

CREATE TABLE wprowadzenie_dodatku (
    dodatek_id_dodatek        NUMERIC(28) NOT NULL,
    studio_id_studio          NUMERIC(28) NOT NULL,
    id_wprowadzenie_dodatku   NUMERIC(28) NOT NULL,
    nazwa_kodowa              VARCHAR(30),
    rok_wprowadzenia          NUMERIC(28),
    koszt                     NUMERIC(28)
)

go 

    
-- Index wprowadzenie_dodatku__IDX on Table wprowadzenie_dodatku not created in ddl
-- Index wprowadzenie_dodatku__IDXv1 on Table wprowadzenie_dodatku not created in ddl

CREATE TABLE wydanie (
    gra_id_gra     NUMERIC(28) NOT NULL,
    id_wydanie     NUMERIC(28) NOT NULL,
    nazwa_kodowa   VARCHAR(30),
    rok_premiery   NUMERIC(28),
    koszt          NUMERIC(28)
)

go 

    
-- Index wydanie__IDX on Table wydanie not created in ddl



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            11
-- CREATE INDEX                             0
-- ALTER TABLE                              0
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
