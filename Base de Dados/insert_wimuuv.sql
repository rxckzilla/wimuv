INSERT INTO public.type (type_id, type_name, type_event) VALUES (1, 'Conhecimento', 'Palestra');
INSERT INTO public.type (type_id, type_name, type_event) VALUES (2, 'Música', 'Concerto');
INSERT INTO public.type (type_id, type_name, type_event) VALUES (3, 'Conhecimento', 'Workshop');
INSERT INTO public.type (type_id, type_name, type_event) VALUES (4, 'Conviver', 'Convivio');

INSERT INTO public.photo (photo_id, photo_name, photo_path) VALUES (1, 'Convivio1.jpeg', 'C:\Photos');
INSERT INTO public.photo (photo_id, photo_name, photo_path) VALUES (2, 'ConcertoTAI.jpeg', 'C:\Photos');
INSERT INTO public.photo (photo_id, photo_name, photo_path) VALUES (3, 'DiogoPanamera.jpeg', 'C:\Photos');
INSERT INTO public.photo (photo_id, photo_name, photo_path) VALUES (4, 'LauraMacho.jpeg', 'C:\Photos');

INSERT INTO public.spot (spot_id, spot_name, spot_long, spot_lat, spot_description, spot_photo_id) VALUES (1, 'Cantinho de Santos', -9.153784536860059, 38.70787407385133, 'Lugar de esplanada', 1);
INSERT INTO public.spot (spot_id, spot_name, spot_long, spot_lat, spot_description, spot_photo_id) VALUES (2, 'IADE', -9.152457364578318, 38.707341487727426, 'Faculdade de Design e Tecnologias', 2);

INSERT INTO public.org (org_id, org_name, org_initials, org_email, org_password) VALUES (1, 'AE IADE', 'AEI', 'aeiade@gmail.com', 'aeiade');
INSERT INTO public.org (org_id, org_name, org_initials, org_email, org_password) VALUES (2, 'Tuna Academica IADE', 'TAI', 'taiade@gmail.com', 'taiade');
INSERT INTO public.org (org_id, org_name, org_initials, org_email, org_password) VALUES (3, 'Luzinete Takara', 'LT', 'ltiade@gmail.com', 'ltiade');


INSERT INTO public.student_course (stu_course_id, stu_course_name) VALUES (1, 'Engenharia Informática');
INSERT INTO public.student_course (stu_course_id, stu_course_name) VALUES (2, 'Marketing e Publicidade');
INSERT INTO public.student_course (stu_course_id, stu_course_name) VALUES (3, 'Design');


INSERT INTO public.state (state_id, state_event) VALUES (1, 'A decorrer');
INSERT INTO public.state (state_id, state_event) VALUES (2, 'Terminado');
INSERT INTO public.state (state_id, state_event) VALUES (3, 'Em breve');


INSERT INTO public.student (stu_id, stu_name, stu_email, stu_password, stu_bdate, stu_gender, stu_crse_id) VALUES (2, 'Laura Macho', 'example2@iol.xyz', 'admin', '2000-05-07', 'F', 1);
INSERT INTO public.student (stu_id, stu_name, stu_email, stu_password, stu_bdate, stu_gender, stu_crse_id) VALUES (9, 'Vania Lopes', 'example3@iol.xyz', 'admin', '1992-03-12', 'F', 1);
INSERT INTO public.student (stu_id, stu_name, stu_email, stu_password, stu_bdate, stu_gender, stu_crse_id) VALUES (10, 'Pedro Santos', 'santini@santini.pt', 'admin', '2002-03-23', 'M', 1);
INSERT INTO public.student (stu_id, stu_name, stu_email, stu_password, stu_bdate, stu_gender, stu_crse_id) VALUES (11, 'Escama da Silva', 'escama@escama.pt', 'admin', '1985-03-12', 'M', 2);
INSERT INTO public.student (stu_id, stu_name, stu_email, stu_password, stu_bdate, stu_gender, stu_crse_id) VALUES (12, 'Duarte da Silva', 'duarteteste@iol.xyz', 'admin', '1992-03-21', 'M', 2);
INSERT INTO public.student (stu_id, stu_name, stu_email, stu_password, stu_bdate, stu_gender, stu_crse_id) VALUES (13, 'Luis Habibi', 'habibi@habibi.com', 'admin', '1998-02-12', 'M', 1);
INSERT INTO public.student (stu_id, stu_name, stu_email, stu_password, stu_bdate, stu_gender, stu_crse_id) VALUES (1, 'Diogo Panamera', 'example@iol.xyz', ':password', '2001-06-12', 'M', 1);
INSERT INTO public.student (stu_id, stu_name, stu_email, stu_password, stu_bdate, stu_gender, stu_crse_id) VALUES (14, 'Marya Hill', 'maryahill@example.com', 'admin', '2002-03-12', 'F', 2);
INSERT INTO public.student (stu_id, stu_name, stu_email, stu_password, stu_bdate, stu_gender, stu_crse_id) VALUES (17, 'José Batáguas', 'jose.bat@example.com', 'admin', '2003-12-21', 'M', 3);



INSERT INTO public.event (event_id, event_type_id, event_name, event_description, event_date, event_starttime, event_endtime, event_duration, event_org_id, event_spot_id, event_capacity, event_photos_id, event_state_id, event_rate_id) VALUES (2, 3, 'Workshop AI', 'Um workshop para todos os interessados em inteligencia artificial', '2021-11-22', '15:00:00', '17:00:00', '02:00:00', 1, 2, 50, 2, 3, 2);
INSERT INTO public.event (event_id, event_type_id, event_name, event_description, event_date, event_starttime, event_endtime, event_duration, event_org_id, event_spot_id, event_capacity, event_photos_id, event_state_id, event_rate_id) VALUES (1, 2, '5º Concerto TAI', 'Um concerto que todos vão gostar', '2021-11-22', '13:00:00', '15:00:00', '02:00:00', 2, 1, 200, 1, 3, 1);
INSERT INTO public.event (event_id, event_type_id, event_name, event_description, event_date, event_starttime, event_endtime, event_duration, event_org_id, event_spot_id, event_capacity, event_photos_id, event_state_id, event_rate_id) VALUES (7, 4, 'Convivio mazbrabos', 'convivio hardcore', '2022-03-01', '12:00:00', '00:00:00', '12:00:00', 1, 1, 200, 1, 3, 2);
INSERT INTO public.event (event_id, event_type_id, event_name, event_description, event_date, event_starttime, event_endtime, event_duration, event_org_id, event_spot_id, event_capacity, event_photos_id, event_state_id, event_rate_id) VALUES (8, 3, 'Workshop de Robotica', 'workshop de robos', '2022-08-18', '04:20:00', '16:20:00', '12:00:00', 1, 2, 420, 1, 3, 2);
INSERT INTO public.event (event_id, event_type_id, event_name, event_description, event_date, event_starttime, event_endtime, event_duration, event_org_id, event_spot_id, event_capacity, event_photos_id, event_state_id, event_rate_id) VALUES (13, 4, 'Convivio 3', 'Convivio', '2022-01-03', '12:00:00', '18:00:00', '06:00:00', 1, 1, 220, 1, 3, 2);
INSERT INTO public.event (event_id, event_type_id, event_name, event_description, event_date, event_starttime, event_endtime, event_duration, event_org_id, event_spot_id, event_capacity, event_photos_id, event_state_id, event_rate_id) VALUES (14, 3, 'Workshop VR', 'Virtual Reality Workshop', '2022-02-11', '14:00:00', '16:00:00', '02:00:00', 1, 2, 200, 1, 3, 2);
INSERT INTO public.event (event_id, event_type_id, event_name, event_description, event_date, event_starttime, event_endtime, event_duration, event_org_id, event_spot_id, event_capacity, event_photos_id, event_state_id, event_rate_id) VALUES (15, 2, 'Concerto N5 TAI', 'Concerto da Tuna', '2022-07-14', '15:00:00', '17:00:00', '02:00:00', 2, 1, 240, 1, 3, 2);
INSERT INTO public.event (event_id, event_type_id, event_name, event_description, event_date, event_starttime, event_endtime, event_duration, event_org_id, event_spot_id, event_capacity, event_photos_id, event_state_id, event_rate_id) VALUES (6, 2, 'concerto', 'melhor concerto de sempre', '2021-12-27', '16:00:00', '18:00:00', '02:00:00', 2, 1, 100, 1, 1, 2);

INSERT INTO public.event_spot_photo (event_spotph_id, event_ph_id, event_sp_id) VALUES (1, 1, 1);
INSERT INTO public.event_spot_photo (event_spotph_id, event_ph_id, event_sp_id) VALUES (2, 2, 2);

INSERT INTO public.event_spot_photo (event_spotph_id, event_ph_id, event_sp_id) VALUES (1, 1, 1);
INSERT INTO public.event_spot_photo (event_spotph_id, event_ph_id, event_sp_id) VALUES (2, 2, 2);

INSERT INTO public.student_event (stu_ev_id, stu_entry_id, stu_ev_entrytime, ev_id) VALUES (1, 1, '15:00:00', 1);
INSERT INTO public.student_event (stu_ev_id, stu_entry_id, stu_ev_entrytime, ev_id) VALUES (2, 2, '16:00:00', 2);
INSERT INTO public.student_event (stu_ev_id, stu_entry_id, stu_ev_entrytime, ev_id) VALUES (3, 2, '17:00:00', 7);
INSERT INTO public.student_event (stu_ev_id, stu_entry_id, stu_ev_entrytime, ev_id) VALUES (4, 14, '16:00:00', 1);
INSERT INTO public.student_event (stu_ev_id, stu_entry_id, stu_ev_entrytime, ev_id) VALUES (5, 17, '17:00:00', 14);


INSERT INTO public.student_event_photo (ev_photo_id, stu_photo_id, stu_in_photo_id) VALUES (1, 2, 1);
INSERT INTO public.student_event_photo (ev_photo_id, stu_photo_id, stu_in_photo_id) VALUES (2, 1, 2);


INSERT INTO public.student_rate (stu_rate_id, stu_rate_ev, stu_rate_comment, stu_rid, ev_rid) VALUES (1, 7, 'bom evento e spot acolhedor', 1, 1);
INSERT INTO public.student_rate (stu_rate_id, stu_rate_ev, stu_rate_comment, stu_rid, ev_rid) VALUES (2, 8, 'boa organizacao', 2, 1);