create schema Olympic_Games;
create table Olympic_Games.Athlete
(
  Athlete_id    serial primary key,
  Sport_id      int         not null,
  City_id       int         not null,
  First_nm      varchar(40) not null,
  Last_nm       varchar(40) not null,
  Date_of_birth date        not null

);
create table Olympic_Games.City
(
  City_id    serial primary key,
  Country_id int         not null,
  City_nm    varchar(40) not null
);

create table Olympic_Games.Kind_of_sport
(
  Sport_id     serial primary key,
  Sport_nm     varchar(25) not null,
  Team_flg     boolean default false,
  Location_txt varchar(50)

);
create table Olympic_Games.Olympiad
(
  Olympiad_id serial primary key,
  City_id     int  not null,
  Symbol_txt  varchar(20),
  Begin_dt    date not null,
  End_dt      date not null
);
create table Olympic_Games.Competition
(
  Competition_id serial primary key,
  Sport_id       int,
  Olympiad_id    int                    not null,
  Result_txt     varchar(100) default 'Canceled',
  Breaking_cnt   integer      default 0 not null,
  constraint Competition check ( Breaking_cnt >= 0 )
);

create table Olympic_Games.Country
(
  Country_id          serial primary key,
  Country_nm          varchar(40) not null,
  Visa_free_entry_flg boolean
);
create table Olympic_Games.Competition_X_Athlete
(
  Athlete_id     integer,
  Competition_id integer,
  PRIMARY KEY (Athlete_id, Competition_id)
);
create table Olympic_Games.Athlete_parameters
(
  Parameters_id serial primary key,
  Athlete_id    int  not null,
  Weight_amt    real,
  Hight_amt     real,
  Start_dt      date not null,
  End_dt        date not null
);
SET search_path = Olympic_Games, public;