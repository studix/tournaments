select * from draws;

insert into tournaments (id, title, spielplan_verfuegbar_datum, created_at, updated_at) values (3, 'Clubmeisterschaften 2021', '2019-08-01', '2021-01-18 10:00:00', '2021-01-18 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (1, 3, true, 'Herren aktiv', '2021-01-18 10:00:00', '2021-01-18 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (3, 3, false, 'Herren Doppel', '2021-01-18 10:00:00', '2021-01-18 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (3, 3, true, 'Jungsenioren', '2021-05-29 10:00:00', '2021-05-29 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (3, 3, true, 'Junioren', '2021-05-29 10:00:00', '2021-05-29 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (4, 3, true, 'Damen Einzel', '2021-05-29 10:00:00', '2021-05-29 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (5, 3, false, 'Mixed Doppel', '2021-05-29 10:00:00', '2021-05-29 10:00:00', null)
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (6, 3, false, 'Doppel Damen', '2021-05-29 10:00:00', '2021-05-29 10:00:00', '(Partner werden zugelost)')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (7, 3, false, 'Veteranen Doppel', '2021-05-29 10:00:00', '2021-05-29 10:00:00', '(Partner werden zugelost)')


insert into tournaments (id, title, spielplan_verfuegbar_datum, sender_email, created_at, updated_at) values (3, 'Clubmeisterschaften 2022', '2022-08-01', null, '2022-01-18 10:00:00', '2022-01-18 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (17, 3, true, 'Herren Einzel: R1-R9 und NL', '2022-01-18 10:00:00', '2022-01-18 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (18, 3, false, 'Herren Doppel', '2022-01-18 10:00:00', '2022-01-18 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (19, 3, true, 'Jungsenioren Einzel: R7-R9 und NL', '2022-05-29 10:00:00', '2022-05-29 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (20, 3, true, 'Junioren 18+U', '2022-05-29 10:00:00', '2022-05-29 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (21, 3, true, 'Damen Einzel: R1-R9 und nicht lizenzierte', '2022-05-29 10:00:00', '2022-05-29 10:00:00', '(NL)');
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (22, 3, true, 'Mixed Doppel', '2022-05-29 10:00:00', '2022-05-29 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (23, 3, false, 'Damen Doppel', '2022-05-29 10:00:00', '2022-05-29 10:00:00', '(Partner werden zugelost)');
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (24, 3, true, 'Herren Doppel 55+', '2022-05-29 10:00:00', '2022-05-29 10:00:00', '(Partner werden zugelost)');

insert into tournaments (id, title, spielplan_verfuegbar_datum, sender_email, created_at, updated_at) values (4, 'Clubmeisterschaften 2023', '2023-08-01', null, '2023-01-18 10:00:00', '2022-01-18 10:00:00')
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (17, 4, true, 'Herren Einzel: R1-R9 und NL', '2023-01-18 10:00:00', '2023-01-18 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (18, 4, false, 'Herren Doppel', '2023-01-18 10:00:00', '2023-01-18 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (19, 4, true, 'Jungsenioren Einzel: R7-R9 und NL', '2023-05-29 10:00:00', '2023-05-29 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (20, 4, true, 'Junioren 18+U', '2023-05-29 10:00:00', '2023-05-29 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (21, 4, true, 'Damen Einzel: R1-R9 und nicht lizenzierte', '2023-05-29 10:00:00', '2023-05-29 10:00:00', '(NL)');
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (22, 4, true, 'Mixed Doppel', '2023-05-29 10:00:00', '2023-05-29 10:00:00', null);
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (23, 4, false, 'Damen Doppel', '2023-05-29 10:00:00', '2023-05-29 10:00:00', '(Partner werden zugelost)');
insert into draws (id, tournament_id, is_single, title, created_at, updated_at, registration_info) values (24, 4, true, 'Herren Doppel 55+', '2023-05-29 10:00:00', '2023-05-29 10:00:00', '(Partner werden zugelost)');

ALTER TABLE draw_registrations OWNER TO roger;

GRANT roger to studer