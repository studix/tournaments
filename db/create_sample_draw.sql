select * from draws;

insert into tournaments (id, title, spielplan_verfuegbar_datum, created_at, updated_at) values (2, 'Clubmeisterschaften 2021', '2019-08-01', '2021-01-18 10:00:00', '2021-01-18 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (1, 2, true, 'Herren aktiv', '2021-01-18 10:00:00', '2021-01-18 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (2, 2, false, 'Herren Doppel', '2021-01-18 10:00:00', '2021-01-18 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (3, 2, true, 'Jungsenioren', '2021-05-29 10:00:00', '2021-05-29 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (3, 2, true, 'Junioren', '2021-05-29 10:00:00', '2021-05-29 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (4, 2, true, 'Damen Einzel', '2021-05-29 10:00:00', '2021-05-29 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (5, 2, false, 'Mixed Doppel', '2021-05-29 10:00:00', '2021-05-29 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (6, 2, false, 'Doppel Damen', '2021-05-29 10:00:00', '2021-05-29 10:00:00', '(Partner werden zugelost)')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (7, 2, false, 'Veteranen Doppel', '2021-05-29 10:00:00', '2021-05-29 10:00:00', '(Partner werden zugelost)')