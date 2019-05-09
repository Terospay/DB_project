insert into Kind_of_sport
values (default, 'Running', false, 'Stadium');
insert into Kind_of_sport
values (default, 'Swimming', false, 'Swimming pool');
insert into Kind_of_sport
values (default, 'Tennis', false, 'Everywhere');
insert into Kind_of_sport
values (default, 'Hockey', true, 'Stadium');
insert into Kind_of_sport
values (default, 'Artistic gymnastics', false, 'Sports Hall');

insert into Country
values (default, 'Russia', True);
insert into Country
values (default, 'UK', False);
insert into Country
values (default, 'Japan', False);
insert into Country
values (default, 'Australia', False);
insert into Country
values (default, 'Canada', False);

insert into City
values (default, 1, 'Moscow');
insert into City
values (default, 2, 'London');
insert into City
values (default, 3, 'Nagano');
insert into City
values (default, 1, 'Sochi');
insert into City
values (default, 5, 'Calgary');
insert into City
values (default, 4, 'Sydney');
insert into City
values (default, 1, 'Orenburg');
insert into City
values (default, 1, 'Chelyabinsk');
insert into City
values (default, 5, 'Toronto');

insert into Athlete
values (default, 1, 3, 'Anton', 'Bodrov', '1997-04-12');
insert into Athlete
values (default, 1, 9, 'Foka', 'Spechinskiy', '1995-07-10');
insert into Athlete
values (default, 2, 2, 'Nicon', 'Gurovski', '1979-07-14');
insert into Athlete
values (default, 3, 7, 'Shpigel', 'Benedict', '1983-07-09');
insert into Athlete
values (default, 3, 5, 'Volodar', 'Bereznikov', '2001-02-24');
insert into Athlete
values (default, 4, 9, 'Iakinf', 'Shepelev', '1976-11-21');
insert into Athlete
values (default, 4, 5, 'Acsentiy', 'Enakeev', '1994-04-16');
insert into Athlete
values (default, 4, 7, 'Mavr', 'Divor', '1989-12-01');
insert into Athlete
values (default, 4, 1, 'Artur', 'Pirozhkov', '1972-05-29');
insert into Athlete
values (default, 5, 8, 'Lexa', 'Sfivta', '1975-09-01');
insert into Athlete
values (default, 5, 6, 'Vladislav', 'Vlasov', '1985-07-24');
insert into Athlete
values (default, 5, 8, 'Vladimir', 'Putin', '1982-03-09');

insert into Athlete_parameters
values (default, 1, 73, 188.5, '2007-09-23', '2013-04-08');
insert into Athlete_parameters
values (default, 1, 82, 189.5, '2013-01-09', '2017-04-08');
insert into Athlete_parameters
values (default, 3, 70, 183.5, '2012-02-08', '2017-04-08');
insert into Athlete_parameters
values (default, 5, 73, 185, '2011-03-11', '2017-04-08');
insert into Athlete_parameters
values (default, 6, 69, 187, '2009-04-13', '2011-06-11');
insert into Athlete_parameters
values (default, 6, 97, 179, '2011-06-12', '2017-04-08');
insert into Athlete_parameters
values (default, 8, 104, 176, '2000-05-23', '2012-01-09');
insert into Athlete_parameters
values (default, 8, 90, 181.4, '2012-01-10', '2017-04-08');
insert into Athlete_parameters
values (default, 9, 88, 191, '2011-08-11', '2017-04-08');

insert into Olympiad
values (default, 4, 'White leopard', '2014-02-07', '2014-02-23');
insert into Olympiad
values (default, 2, 'Venlock', '2012-07-12', '2014-08-04');
insert into Olympiad
values (default, 3, 'Nokky', '1998-02-11', '2014-02-26');
insert into Olympiad
values (default, 1, 'Bear', '1980-07-19', '1980-08-03');
insert into Olympiad
values (default, 5, 'Lion', '1988-07-11', '2014-08-02');

insert into Competition
values (default, 4, 1, 'Russia win with 7:3', 5);
insert into Competition
values (default, 1, 4, '', 0);
insert into Competition
values (default, 1, 4, '', 1);
insert into Competition
values (default, 2, 5, 'Vlasov win, but Putin win also', 3);
insert into Competition
values (default, 4, 3, 'Canada win with 4:3', 2);
insert into Competition
values (default, 3, 2, '', 3);
insert into Competition
values (default, 5, 4, '', 2);

insert into Competition_X_Athlete
values (6, 1);
insert into Competition_X_Athlete
values (7, 1);
insert into Competition_X_Athlete
values (8, 1);
insert into Competition_X_Athlete
values (9, 1);
insert into Competition_X_Athlete
values (7, 5);
insert into Competition_X_Athlete
values (9, 5);
insert into Competition_X_Athlete
values (1, 2);
insert into Competition_X_Athlete
values (1, 3);
insert into Competition_X_Athlete
values (12, 4);
insert into Competition_X_Athlete
values (3, 6);
insert into Competition_X_Athlete
values (11, 4);