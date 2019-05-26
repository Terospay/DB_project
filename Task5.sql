/*Найдите имена и фамилии всех хоккеистов родившихся позднее 1973-01-01*/
select A.First_nm, A.Last_nm, A.Date_of_birth
from Athlete A
       join Kind_of_sport K
            on A.Sport_id = K.Sport_id
where K.Sport_nm = 'Hockey'
  and A.Date_of_birth > '1973-01-01';

/*Для кажого соревнования по бегу вывести город проведения и символ олимпиады на которой это соревнование
 проводилось(без повторов)*/
select distinct C.City_nm, O.Symbol_txt
from ((Competition Comp left join Olympiad O on Comp.Olympiad_id = O.Olympiad_id) left join City C
  on C.City_id = O.City_id)
       left join Kind_of_sport K
                 on K.Sport_id = Comp.Sport_id
where Sport_nm = 'Running';

/*Найдите фамилии Атлетов участвующих в соревнованиях на Олимаиадах проходящих в Канаде*/
select A.Last_nm
from (Athlete A
  join Kind_of_sport K
  on A.Sport_id = K.Sport_id)
       join ((((Olympiad O
  join City C
  on O.City_id = C.City_id)
  join Country Co
  on Co.Country_id = C.Country_id)
  join Competition Comp
  on Comp.Olympiad_id = O.Olympiad_id)
  join Competition_X_Athlete CXA
  on CXA.Competition_id = Comp.Competition_id)
            on CXA.Athlete_id = A.Athlete_id
where K.Sport_nm = 'Artistic gymnastics'
  and Co.Country_nm = 'Canada';

/*Для каждого вида спорта найдите актуальные на момент 2012-01-01 средние вес и рост*/

select K.Sport_nm, avg(P.Weight_amt) avg_Weight, avg(P.Hight_amt) avg_Hight
from (Athlete A join Kind_of_sport K
  on A.Sport_id = K.Sport_id)
       join Athlete_parameters P on P.Athlete_id = A.Athlete_id
where P.Start_dt < '2012-01-01'
  and P.End_dt >= '2012-01-01'
group by K.Sport_nm;

/*Выдать имена, фамилии и даты рождения хоккеистов, которые не учавствовали в матчах с количеством нарушений правил больше 3, отсортированных по возросту*/
select A.First_nm, A.Last_nm, A.Date_of_birth
from ((Athlete A join Kind_of_sport K
  on A.Sport_id = K.Sport_id) join Competition_X_Athlete CXA on CXA.Athlete_id = A.Athlete_id)
       join Competition C on C.Competition_id = CXA.Competition_id
where K.Sport_nm = 'Hockey'
  and C.Breaking_cnt > 3
order by A.Date_of_birth;