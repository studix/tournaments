select * from draws;

insert into tournaments (id, title, spielplan_verfuegbar_datum, created_at, updated_at) values (1, 'Clubmeisterschaften 2020', '2019-08-01', '2020-01-18 10:00:00', '2020-01-18 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at) values (1, 1, true, 'Herren Aktiv', '2020-01-18 10:00:00', '2020-01-18 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at) values (2, 1, false, 'Herren Doppel', '2020-01-18 10:00:00', '2020-01-18 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at) values (3, 1, true, 'Jungsenioren', '2020-05-29 10:00:00', '2020-05-29 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at) values (4, 1, true, 'Damen Einzel', '2020-05-29 10:00:00', '2020-05-29 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at) values (5, 1, false, 'Mixed Doppel', '2020-05-29 10:00:00', '2020-05-29 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at) values (6, 1, false, 'Damen Doppel', '2020-05-29 10:00:00', '2020-05-29 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at) values (7, 1, false, 'Veteranen Doppel', '2020-05-29 10:00:00', '2020-05-29 10:00:00')