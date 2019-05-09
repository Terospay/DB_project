create view Athlete_view
as
select First_nm,
       Last_nm,
       Date_of_birth date
from Athlete;

create view City_view
as
select City_nm
from City;

create view Kind_of_sport_view
as
select Sport_nm, Team_flg, Location_txt
from Kind_of_sport;

create view Olympiad_view
as
select Symbol_txt, Begin_dt, End_dt
from Olympiad;

create view Competition_view
as
select Result_txt, Breaking_cnt
from Competition;

create view Country_view
as
select Country_nm, Visa_free_entry_flg
from Country;

create view Parameters_Athlete_view
as
select Weight_amt, Hight_amt, Start_dt, End_dt
from Athlete_parameters;