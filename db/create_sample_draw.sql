select * from draws;

insert into tournaments (id, title, spielplan_verfuegbar_datum, created_at, updated_at) values (1, 'Clubmeisterschaften 2020', '2019-08-01', '2020-01-18 10:00:00', '2020-01-18 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at) values (1, 1, true, 'Herren Aktiv', '2020-01-18 10:00:00', '2020-01-18 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at) values (2, 1, false, 'Herren Doppel', '2020-01-18 10:00:00', '2020-01-18 10:00:00')