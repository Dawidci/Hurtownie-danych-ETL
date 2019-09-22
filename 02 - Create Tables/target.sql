-- Generated by Oracle SQL Developer Data Modeler 18.4.0.339.1532
--   at:        2019-08-26 22:23:19 CEST
--   site:      SQL Server 2012
--   type:      SQL Server 2012

CREATE TABLE target.dbo.dodatek (
    t_id                             NUMERIC(28),
    nazwa                            VARCHAR(20),
    cena                             NUMERIC(28),
	source                           NUMERIC(28),
    timestamp                        datetime,
);

CREATE TABLE target.dbo.gra (
    t_id                     NUMERIC(28),
    nazwa                    VARCHAR(20),
    gatunek                  VARCHAR(20),
    cena                     NUMERIC(28),
    source                   NUMERIC(28),
    timestamp                datetime,
);

CREATE TABLE target.dbo.platforma (
    t_id                                 NUMERIC(28),
    nazwa                                VARCHAR(30),
    liczba_graczy                        NUMERIC(28),
    source                               NUMERIC(28),
    timestamp                            datetime,
);

CREATE TABLE target.dbo.poprawka (
    t_id                               NUMERIC(28),
    id_gra                             NUMERIC(28),
	id_wersja_poprawki                 NUMERIC(28),
    koszt                              NUMERIC(28),
    priorytet                          NUMERIC(28),
    source                             NUMERIC(28),
    timestamp                          datetime,
);

CREATE TABLE target.dbo.produkcja (
    t_id                                 NUMERIC(28),
    id_studio                            NUMERIC(28),
	id_gra                               NUMERIC(28),
    rok_rozpoczecia                      NUMERIC(28),
    koszt                                NUMERIC(28),
    source                               NUMERIC(28),
    timestamp                            datetime,
);

CREATE TABLE target.dbo.promocja (
    t_id                               NUMERIC(28),
    id_gra                             NUMERIC(28),
	id_rodzaj_promocji                 NUMERIC(28),
    koszt                              NUMERIC(28),
    zasieg                             NUMERIC(28),
    source                             NUMERIC(28),
    timestamp                          datetime,
);

CREATE TABLE target.dbo.rodzaj_promocji (
    t_id                                             NUMERIC(28),
    nazwa                                            VARCHAR(30),
    grupa_docelowa                                   VARCHAR(30),
    source                                           NUMERIC(28),
    timestamp                                        datetime,
);

CREATE TABLE target.dbo.studio (
    t_id                           NUMERIC(28),
    nazwa                          VARCHAR(30),
    liczba_pracownikow             NUMERIC(28),
    liczba_dzialow                 NUMERIC(28),
    source                         NUMERIC(28),
    timestamp                      datetime,
);

CREATE TABLE target.dbo.t_key_dodatek 
    (
    t_id               INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value            NUMERIC(28),
);

CREATE TABLE target.dbo.t_key_gra 
    (
    t_id           INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value        NUMERIC(28),
);

CREATE TABLE target.dbo.t_key_platforma 
    (
    t_id                 INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value              NUMERIC(28),
);

CREATE TABLE target.dbo.t_key_poprawka 
    (
    t_id                INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value             NUMERIC(28),
);

CREATE TABLE target.dbo.t_key_produkcja 
    (
    t_id                 INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value              NUMERIC(28),
);

CREATE TABLE target.dbo.t_key_promocja 
    (
    t_id                INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value             NUMERIC(28),
);

CREATE TABLE target.dbo.t_key_rodzaj_promocji 
    (
    t_id                       INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value                    NUMERIC(28),
);

CREATE TABLE target.dbo.t_key_studio 
    (
    t_id              INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value           NUMERIC(28),
);

CREATE TABLE target.dbo.t_key_wersja_poprawki 
    (
    t_id                       INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value                    NUMERIC(28),
);

CREATE TABLE target.dbo.t_key_wprowadzenie_dodatku 
    (
    t_id                            INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value                         NUMERIC(28),
);

CREATE TABLE target.dbo.t_key_wydanie 
    (
    t_id               INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
    t_value            NUMERIC(28),
);

CREATE TABLE target.dbo.wersja_poprawki (
    t_id                                             NUMERIC(28),
    nazwa                                            VARCHAR(30),
    source                                           NUMERIC(28),
    timestamp                                        datetime,
);

CREATE TABLE target.dbo.wprowadzenie_dodatku (
    t_id                                                       NUMERIC(28),
    id_dodatek                                                 NUMERIC(28),
    id_studio                                                  NUMERIC(28),
    rok_wprowadzenia                                           NUMERIC(28),
    koszt                                                      NUMERIC(28),
    source                                                     NUMERIC(28),
    timestamp                                                  datetime,
);

CREATE TABLE target.dbo.wydanie (
    t_id                             NUMERIC(28),
	id_gra                           NUMERIC(28),
	id_platforma					 NUMERIC(28),
    rok_premiery                     NUMERIC(28),
    koszt                            NUMERIC(28),
    source                           NUMERIC(28),
    timestamp                        datetime,
);