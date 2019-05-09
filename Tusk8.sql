create view Competition_info
as
select K.Sport_nm, Cou.Country_nm, C.City_nm, Comp.Result_txt, Comp.Breaking_cnt
from (((Competition Comp full join Olympiad O on Comp.Olympiad_id = O.Olympiad_id) full join Kind_of_sport K
  on K.Sport_id = Comp.Sport_id) full join City C on C.City_id = Comp.Competition_id)
       full join Country Cou on C.Country_id = Cou.Country_id;

create view Athlete_info
as
select A.First_nm, A.Last_nm, A.Date_of_birth, K.Sport_nm, Cou.Country_nm, C.City_nm
from ((Athlete A full join Kind_of_sport K on A.Sport_id = K.Sport_id) full join City C on C.City_id = A.City_id)
       full join Country Cou on Cou.Country_id = C.Country_id
where date_part('year', age(A.Date_of_birth)) >= 18;
