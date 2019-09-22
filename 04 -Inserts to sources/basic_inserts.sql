--exec sp_MSforeachtable 'TRUNCATE TABLE?';

--Advertisement
INSERT INTO advertisement.dbo.gra VALUES (1, 'Batman', 'Action', 100, 25);
INSERT INTO advertisement.dbo.gra VALUES (2, 'Robin', 'RPG', 200, 35);
INSERT INTO advertisement.dbo.gra VALUES (3, 'Iron Man', 'Action', 300, 45);
INSERT INTO advertisement.dbo.gra VALUES (4, 'Joker', 'Shooter', 400, 55);
INSERT INTO advertisement.dbo.gra VALUES (5, 'Pingwin', 'Shooter', 500, 65);

INSERT INTO advertisement.dbo.platforma VALUES (1, 'Xbox 360', 10, 2);
INSERT INTO advertisement.dbo.platforma VALUES (2, 'Xbox One', 20, 5);
INSERT INTO advertisement.dbo.platforma VALUES (3, 'Playstation 3', 30, 3);
INSERT INTO advertisement.dbo.platforma VALUES (4, 'Playstation 4', 40, 4);
INSERT INTO advertisement.dbo.platforma VALUES (5, 'PC', 50, 34);

INSERT INTO advertisement.dbo.poprawka VALUES (1, 1, 1, 'Transparent mountain', 100, 1);
INSERT INTO advertisement.dbo.poprawka VALUES (2, 2, 2, 'Big trees', 200, 13);
INSERT INTO advertisement.dbo.poprawka VALUES (3, 3, 3, 'Lack of emotions', 300, 54);
INSERT INTO advertisement.dbo.poprawka VALUES (4, 4, 4, 'False advertising', 400, 2);
INSERT INTO advertisement.dbo.poprawka VALUES (5, 5, 5, 'Too big head', 500, 5);

INSERT INTO advertisement.dbo.promocja VALUES (1, 1, 1, 'Facebook campaign', 10, 10);
INSERT INTO advertisement.dbo.promocja VALUES (2, 2, 2, 'Twitter campaign', 20, 10);
INSERT INTO advertisement.dbo.promocja VALUES (3, 3, 3, 'Gamescom campaign', 30, 10);
INSERT INTO advertisement.dbo.promocja VALUES (4, 4, 4, 'Carbonara campaign', 40, 10);
INSERT INTO advertisement.dbo.promocja VALUES (5, 5, 5, 'Pinterest campaign', 150, 10);

INSERT INTO advertisement.dbo.rodzaj_promocji VALUES (1, 'Facebook', 'Youth', 2);
INSERT INTO advertisement.dbo.rodzaj_promocji VALUES (2, 'Twitter', 'Elders', 2);
INSERT INTO advertisement.dbo.rodzaj_promocji VALUES (3, 'Gamescom', 'Youth', 2);
INSERT INTO advertisement.dbo.rodzaj_promocji VALUES (4, 'Carbonara', 'Elders', 2);
INSERT INTO advertisement.dbo.rodzaj_promocji VALUES (5, 'Pinterest', 'Youth', 2);

INSERT INTO advertisement.dbo.wersja_poprawki VALUES (1, 'Revision 1', 3);
INSERT INTO advertisement.dbo.wersja_poprawki VALUES (2, 'Revision 2', 3);
INSERT INTO advertisement.dbo.wersja_poprawki VALUES (3, 'Revision 3', 3);
INSERT INTO advertisement.dbo.wersja_poprawki VALUES (4, 'Revision 4', 3);
INSERT INTO advertisement.dbo.wersja_poprawki VALUES (5, 'Revision 5', 3);

INSERT INTO advertisement.dbo.wydanie VALUES (1, 1, 1, 'Batman X360', 2014, 100);
INSERT INTO advertisement.dbo.wydanie VALUES (2, 2, 2, 'Robin X360', 2015, 200);
INSERT INTO advertisement.dbo.wydanie VALUES (3, 3, 3, 'Iron Man X360', 2016, 300);
INSERT INTO advertisement.dbo.wydanie VALUES (4, 4, 4, 'Joker X360', 2017, 400);
INSERT INTO advertisement.dbo.wydanie VALUES (5, 5, 5, 'Pingwin X360', 2018, 500);

--Development
INSERT INTO development.dbo.dodatek VALUES (101, 'Pierwszy dodatek', 10, 23);
INSERT INTO development.dbo.dodatek VALUES (102, 'Drugi dodatek', 20, 23);
INSERT INTO development.dbo.dodatek VALUES (103, 'Trzeci dodatek', 30, 23);
INSERT INTO development.dbo.dodatek VALUES (104, 'Czwarty dodatek', 40, 23);
INSERT INTO development.dbo.dodatek VALUES (105, 'Pi¹ty dodatek', 50, 23);
INSERT INTO development.dbo.dodatek VALUES (106, 'Szósty dodatek', 50, 23);
INSERT INTO development.dbo.dodatek VALUES (107, 'Siódmy dodatek', 50, 23);
INSERT INTO development.dbo.dodatek VALUES (108, 'Ósmy dodatek', 50, 23);
INSERT INTO development.dbo.dodatek VALUES (109, 'Dziewi¹ty dodatek', 50, 23);
INSERT INTO development.dbo.dodatek VALUES (110, '10 dodatek', 50, 23);

INSERT INTO development.dbo.gra VALUES (101, 'Dans Makabr', 'Action', 13, 331);
INSERT INTO development.dbo.gra VALUES (102, 'Duze nic', 'RPG', 45, 314);
INSERT INTO development.dbo.gra VALUES (103, 'Nazwa bez nazwy', 'RPG', 653, 311);
INSERT INTO development.dbo.gra VALUES (104, 'Echo', 'Action', 343, 315);
INSERT INTO development.dbo.gra VALUES (105, 'Pomy³ka', 'Shooter', 323, 321);
INSERT INTO development.dbo.gra VALUES (106, 'Ucieczka', 'Action', 13, 331);
INSERT INTO development.dbo.gra VALUES (107, 'Happiness', 'RPG', 45, 314);
INSERT INTO development.dbo.gra VALUES (108, 'Jab³ko Edenu', 'RPG', 653, 311);
INSERT INTO development.dbo.gra VALUES (109, 'Drobne grosze', 'Action', 343, 315);
INSERT INTO development.dbo.gra VALUES (110, 'Puste miejsce', 'Shooter', 323, 321);

INSERT INTO development.dbo.poprawka VALUES (101, 101, 101, 'Too big arms', 112, 263);
INSERT INTO development.dbo.poprawka VALUES (102, 102, 102, 'Too big heads', 1132, 243);
INSERT INTO development.dbo.poprawka VALUES (103, 103, 103, 'Too big legs', 1212, 233);
INSERT INTO development.dbo.poprawka VALUES (104, 104, 104, 'Too big meat', 1142, 253);
INSERT INTO development.dbo.poprawka VALUES (105, 105, 105, 'Too big bigs', 1124, 233);

INSERT INTO development.dbo.produkcja VALUES (101, 101, 101, 'Project X', 2018, 133);
INSERT INTO development.dbo.produkcja VALUES (102, 102, 102, 'Project XY', 2019, 123);
INSERT INTO development.dbo.produkcja VALUES (103, 103, 103, 'Project XO', 2020, 1323);
INSERT INTO development.dbo.produkcja VALUES (104, 104, 104, 'Project XK', 2021, 173);
INSERT INTO development.dbo.produkcja VALUES (105, 105, 105, 'Project XA', 2022, 1342);
INSERT INTO development.dbo.produkcja VALUES (106, 101, 106, 'Project XG', 2022, 1325);
INSERT INTO development.dbo.produkcja VALUES (107, 104, 107, 'Project XAD', 2022, 1354);
INSERT INTO development.dbo.produkcja VALUES (108, 102, 108, 'Project XDAWA', 2022, 1325);
INSERT INTO development.dbo.produkcja VALUES (109, 103, 109, 'Project XAW', 2022, 15);
INSERT INTO development.dbo.produkcja VALUES (110, 102, 110, 'Project XAAA', 2022, 1335);

INSERT INTO development.dbo.studio VALUES (101, 'Chorizo', 1050, 14, 'Warsaw');
INSERT INTO development.dbo.studio VALUES (102, 'Big Arms Games', 1430, 122, 'Dubai');
INSERT INTO development.dbo.studio VALUES (103, 'Happy face', 1420, 112, 'Marokko');
INSERT INTO development.dbo.studio VALUES (104, 'Macadamia', 4300, 132, 'Warsaw');
INSERT INTO development.dbo.studio VALUES (105, 'Sad man', 1032, 162, 'Dubai');

INSERT INTO development.dbo.wersja_poprawki VALUES (101, 'Revision 101', 233);
INSERT INTO development.dbo.wersja_poprawki VALUES (102, 'Revision 102', 4223);
INSERT INTO development.dbo.wersja_poprawki VALUES (103, 'Revision 103', 232);
INSERT INTO development.dbo.wersja_poprawki VALUES (104, 'Revision 104', 4243);
INSERT INTO development.dbo.wersja_poprawki VALUES (105, 'Revision 105', 2423);

INSERT INTO development.dbo.wprowadzenie_dodatku VALUES (101, 101, 101, 'Pierwszy dodatek X360', 2019, 10550);
INSERT INTO development.dbo.wprowadzenie_dodatku VALUES (102, 102, 102, 'Drugi dodatek XONE', 2018, 1020);
INSERT INTO development.dbo.wprowadzenie_dodatku VALUES (103, 103, 103, '10 dodatek PS4', 2017, 1040);
INSERT INTO development.dbo.wprowadzenie_dodatku VALUES (104, 104, 104, 'Tajemniczy projekt', 2015, 1050);
INSERT INTO development.dbo.wprowadzenie_dodatku VALUES (105, 105, 105, 'Wielka niespodzianka', 2016, 1200);
INSERT INTO development.dbo.wprowadzenie_dodatku VALUES (106, 106, 105, 'Abecadlo', 2016, 1240);
INSERT INTO development.dbo.wprowadzenie_dodatku VALUES (107, 107, 105, 'Alohomora', 2016, 1520);
INSERT INTO development.dbo.wprowadzenie_dodatku VALUES (108, 108, 103, 'Huge nothuug', 2016, 1300);
INSERT INTO development.dbo.wprowadzenie_dodatku VALUES (109, 109, 104, 'Aj', 2016, 3200);
INSERT INTO development.dbo.wprowadzenie_dodatku VALUES (110, 110, 101, 'Brak nazwy (jeszcze)', 2016, 5430);