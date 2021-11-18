create table student (
                         stu_id SERIAL not null,
                         stu_name VARCHAR(60) not null,
                         stu_email VARCHAR(60) not null,
                         stu_photo_id int not null,
                         stu_password VARCHAR(60) not null,
                         stu_bdate date not null,
                         stu_gender CHAR(1) not null,
                         stu_crse_id int not null,
                         primary key (stu_id)
);

create table event (
                       event_id SERIAL not null,
                       event_type_id int not null,
                       event_name VARCHAR(200) not null,
                       event_description VARCHAR(250) not null,
                       event_date date not null,
                       event_starttime time not null,
                       event_endtime time not null,
                       event_duration time not null,
                       event_org_id int not null,
                       event_spot_id int not null,
                       event_capacity INT,
                       event_photos_id int ,
                       event_state_id int not null,
                       event_rate_id INT not null,
                       primary key (event_id)
);

create table event_spot_photo (
                                  event_spotph_id SERIAL not null,
                                  event_ph_id int not null,
                                  event_sp_id int not null,
                                  primary key (event_spotph_id)
);

create table student_event (
                               stu_ev_id SERIAL not null,
                               stu_entry_id int not null,
                               stu_ev_entrytime time,
                               ev_id int not null,
                               primary key(stu_ev_id)
);

create table spot (
                      spot_id SERIAL not null,
                      spot_name VARCHAR(60) not null,
                      spot_long float not null,
                      spot_lat float not null,
                      spot_description VARCHAR(250) not null,
                      spot_photo_id int ,
                      primary key (spot_id)
);

create table type (
                      type_id SERIAL not null,
                      type_name VARCHAR(60) not null,
                      type_event VARCHAR(60) not null,
                      primary key (type_id)
);

create table state (
                       state_id SERIAL not null,
                       state_event VARCHAR(60) not null,
                       primary key (state_id)
);

create table rate
(
    rate_id    SERIAL not null,
    rate_event INT,
    ev_rated_id INT,
    primary key (rate_id)
);


create table photo (
                       photo_id SERIAL not null,
                       photo_name VARCHAR(60),
                       photo_path VARCHAR(600) not null,
                       primary key (photo_id)
);

create table student_event_photo (
                                     ev_photo_id SERIAL not null,
                                     stu_photo_id int not null,
                                     stu_in_photo_id int not null,
                                     primary key(ev_photo_id)
);

create table org (
                     org_id SERIAL not null,
                     org_name VARCHAR(60),
                     org_initials VARCHAR(20),
                     primary key (org_id)
);

create table student_course (
                                stu_course_id SERIAL not null,
                                stu_course_name VARCHAR(60) not null,
                                primary key (stu_course_id)
);

create table student_rate (
                              stu_rate_id SERIAL not null,
                              stu_rate_ev int not null,
                              stu_rid int not null,
                              ev_rid int not null,
                              primary key (stu_rate_id)
);


alter table student
    add constraint fk_studentcourse
        foreign key (stu_crse_id) references student_course(stu_course_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table student
    add constraint fk_stuphoto
        foreign key (stu_photo_id) references photo(photo_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table event
    add constraint fk_event_spot
        foreign key (event_spot_id) references spot(spot_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table event
    add constraint fk_event_photo_id
        foreign key (event_photos_id) references photo(photo_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table event
    add constraint fk_event_state
        foreign key (event_state_id) references state(state_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table event
    add constraint fk_event_org
        foreign key (event_org_id) references org(org_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table event
    add constraint fk_event_type
        foreign key (event_type_id) references type(type_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table event
    add constraint fk_event_rate
        foreign key (event_rate_id) references rate(rate_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table spot
    add constraint fk_spot_photo_id
        foreign key (spot_photo_id) references photo(photo_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table event_spot_photo
    add constraint fk_ev_photo_id
        foreign key (event_ph_id) references event(event_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table event_spot_photo
    add constraint fk_ev_spotphoto_id
        foreign key (event_sp_id) references spot(spot_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table student_rate
    add constraint fk_student_rid
        foreign key (stu_rid) references student(stu_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table student_rate
    add constraint fk_ev_rid
        foreign key (ev_rid) references event(event_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table student_event
    add constraint fk_stu_entry_id
        foreign key (stu_entry_id) references student(stu_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table student_event
    add constraint fk_stu_ev_id
        foreign key (ev_id) references event(event_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table student_event_photo
    add constraint fk_stu_photo_id
        foreign key (stu_photo_id) references photo(photo_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table student_event_photo
    add constraint fk_stu_in_photo_id
        foreign key (stu_in_photo_id) references student(stu_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table rate
    add constraint fk_ev_rated_id
        foreign key (ev_rated_id) references event(event_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;







