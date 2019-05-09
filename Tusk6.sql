select A.First_nm, A.Last_nm
from Athlete A;

insert into Athlete
values (default, 2, 1, 'Petr', 'Grinev', '2000-01-01');

update Athlete
set Date_of_birth = '2000-01-02'
where First_nm = 'Petr';

delete
from Athlete
where First_nm = 'Petr';