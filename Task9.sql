create or replace function delete_athlete()
  returns TRIGGER as
$$
begin
  delete
  from Athlete_parameters AP
  where AP.Athlete_id = old.Athlete_id;
  return old;
end;
$$ language plpgsql;



create trigger check_Athlete
  after delete
  on Athlete
  for each row
execute procedure delete_athlete();



create or replace function trial_tour()
  returns trigger as
$$
begin
  insert into Competition values (default, null, new.Olympiad_id, 'Trial tour', default);
  return new;
end;
$$ language plpgsql;



create trigger new_olimpiad
  after insert
  on Olympiad
  for each row
execute procedure trial_tour();