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


insert into tournaments (id, title, spielplan_verfuegbar_datum, sender_email, created_at, updated_at) values (3, 'Clubmeisterschaften 2022', '2022-08-01', null, '2022-01-18 10:00:00', '2022-01-18 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (17, 3, true, 'Herren Einzel: R1-R9 und NL', '2022-01-18 10:00:00', '2022-01-18 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (18, 3, false, 'Herren Doppel', '2022-01-18 10:00:00', '2022-01-18 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (19, 3, true, 'Jungsenioren Einzel: R7-R9 und NL', '2022-05-29 10:00:00', '2022-05-29 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (20, 3, true, 'Junioren 18+U', '2022-05-29 10:00:00', '2022-05-29 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (21, 3, true, 'Damen Einzel: R1-R9 und nicht lizenzierte', '2022-05-29 10:00:00', '2022-05-29 10:00:00', '(NL)');
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (22, 3, true, 'Mixed Doppel', '2022-05-29 10:00:00', '2022-05-29 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (23, 3, false, 'Damen Doppel', '2022-05-29 10:00:00', '2022-05-29 10:00:00', '(Partner werden zugelost)');
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (24, 3, true, 'Herren Doppel 55+', '2022-05-29 10:00:00', '2022-05-29 10:00:00', '(Partner werden zugelost)');