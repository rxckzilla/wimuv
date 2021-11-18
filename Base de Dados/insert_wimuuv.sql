insert into org (org_name, org_initials) values('AE IADE','AEI');
insert into org (org_name, org_initials) values('Tuna Academica IADE', 'TAI');

insert into student_course (stu_course_name) values('Engenharia Informática');
insert into student_course (stu_course_name) values('Marketing e Publicidade');

insert into type (type_name,type_event) values('Conhecimento', 'Palestra');
insert into type (type_name,type_event) values('Música', 'Concerto');
insert into type (type_name,type_event) values('Conhecimento', 'Workshop');
insert into type (type_name,type_event) values('Conviver', 'Convivio');

insert into state (state_event) values('A decorrer');
insert into state (state_event) values('Terminado');
insert into state (state_event) values('Em breve');



insert into photo( photo_name, photo_path) values ('Convivio1.jpeg', 'C:\Photos');
insert into photo( photo_name, photo_path) values ('ConcertoTAI.jpeg', 'C:\Photos');
insert into photo( photo_name, photo_path) values ('DiogoPanamera.jpeg', 'C:\Photos');
insert into photo( photo_name, photo_path) values ('LauraMacho.jpeg', 'C:\Photos');

insert into spot (spot_name,spot_description,spot_long,spot_lat, spot_photo_id) values ('Cantinho de Santos','Lugar de esplanada',35.7574377,-97.6468986, 1);
insert into spot (spot_name,spot_description,spot_long,spot_lat,spot_photo_id) values ('IADE','Faculdade de Design e Tecnologias',38.70783614490765, -9.150565882521088, 2);







insert into student (stu_name,stu_email, stu_photo_id,stu_password,stu_bdate,stu_gender,stu_crse_id) values ('Diogo Panamera','example@iol.xyz', 3, 'admin', to_date('2001-06-12','YYYY-MM-DD'), 'M', 1);
insert into student (stu_name,stu_email,stu_photo_id, stu_password,stu_bdate,stu_gender,stu_crse_id) values ('Laura Macho','example2@iol.xyz',4, 'admin', to_date('2000-05-07','YYYY-MM-DD'), 'F', 1);




insert into student_event_photo( stu_photo_id, stu_in_photo_id)  values(2, 1);
insert into student_event_photo( stu_photo_id, stu_in_photo_id)  values(1, 2);
insert into event_spot_photo( event_sp_id, event_ph_id) values(1, 1);
insert into event_spot_photo( event_sp_id, event_ph_id) values(2, 2);



insert into event (event_type_id, event_name, event_description, event_date, event_starttime, event_endtime, event_duration, event_org_id, event_spot_id, event_capacity, event_state_id, event_rate_id) values
(2, '5º Concerto TAI', 'Um concerto que todos vão gostar', to_date('2021-11-22','YYYY-MM-DD'), '13:00', '15:00', '02:00', 1, 1, 200, 3, 1);
insert into event (event_type_id, event_name, event_description, event_date, event_starttime, event_endtime, event_duration, event_org_id, event_spot_id, event_capacity, event_state_id, event_rate_id) values
(2, 'Workshop AI', 'Um workshop para todos os interessados em inteligencia artificial', to_date('2021-11-22','YYYY-MM-DD'), '15:00', '17:00', '02:00', 2, 1, 50, 3, 2);

insert into student_rate (stu_rate_ev, stu_rid, ev_rid) values (7,1,1);
insert into student_rate (stu_rate_ev, stu_rid, ev_rid) values (8,2,1);

insert into rate (rate_event, ev_rated_id) values (8, 1);
insert into rate (rate_event, ev_rated_id) values (7, 2);