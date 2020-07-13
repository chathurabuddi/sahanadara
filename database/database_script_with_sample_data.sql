create schema sahanadara collate latin1_swedish_ci;

create table incident
(
    id bigint auto_increment
        primary key,
    creation_timestamp datetime(6) null,
    update_timestamp datetime(6) null,
    description varchar(255) null,
    name varchar(255) null,
    date date null
);

create table location
(
    id bigint auto_increment
        primary key,
    creation_timestamp datetime(6) null,
    update_timestamp datetime(6) null,
    latitude varchar(255) null,
    longitude varchar(255) null
);

create table relief_type
(
    id bigint auto_increment
        primary key,
    creation_timestamp datetime(6) null,
    update_timestamp datetime(6) null,
    name varchar(255) null
);

create table user
(
    id bigint auto_increment
        primary key,
    creation_timestamp datetime(6) null,
    update_timestamp datetime(6) null,
    contact_number varchar(255) null,
    email varchar(255) null,
    name varchar(255) null,
    user_type varchar(255) null
);

create table relief_request
(
    id bigint auto_increment
        primary key,
    creation_timestamp datetime(6) null,
    update_timestamp datetime(6) null,
    description varchar(255) null,
    title varchar(255) null,
    requesting_user_id bigint null,
    completed bit not null,
    associated_incident_id bigint null,
    location_id bigint null,
    constraint FKj1slbyploc91qihqfncxjorvf
        foreign key (location_id) references location (id),
    constraint FKlovbmt4ubc3crc0gtm4jje2fc
        foreign key (associated_incident_id) references incident (id),
    constraint FKobhw05w4riv7d8lhxlaxy70ih
        foreign key (requesting_user_id) references user (id)
);

create table relief
(
    id bigint auto_increment
        primary key,
    creation_timestamp datetime(6) null,
    update_timestamp datetime(6) null,
    relief_type_id bigint null,
    description varchar(255) null,
    distributed_location_id bigint null,
    incident_id bigint null,
    volunteer_id bigint null,
    completed bit not null,
    title varchar(255) null,
    relief_request_id bigint null,
    constraint FK8j4mrysiivs3rw7c0owf4p123
        foreign key (incident_id) references incident (id),
    constraint FKc59iagnhtpy48rpi3o8ljdnph
        foreign key (relief_request_id) references relief_request (id),
    constraint FKdfstaxablq5h6vwcwo1kcqbs
        foreign key (volunteer_id) references user (id),
    constraint FKs2j5aw4ctckbv4fkmf5u8opsn
        foreign key (distributed_location_id) references location (id),
    constraint FKs2vwf9ublvy80sve2qtajj2pw
        foreign key (relief_type_id) references relief_type (id)
);

INSERT INTO sahanadara.incident (id, creation_timestamp, update_timestamp, description, name, date) VALUES (1, '2020-07-13 13:17:38', '2020-07-13 13:17:40', 'Balangoda bus stand and multiple houses are flooded as several waterways were clogged', 'Flood - Balangoda Town', '2020-07-01');
INSERT INTO sahanadara.incident (id, creation_timestamp, update_timestamp, description, name, date) VALUES (2, '2020-07-13 13:26:06', '2020-07-13 13:26:08', 'A series of bombs ripped through churches and hotels in Sri Lanka on Easter Sunday, killing at least 290 people and injuring hundreds.', 'Easter Sunday Bombings', '2019-04-21');
INSERT INTO sahanadara.incident (id, creation_timestamp, update_timestamp, description, name, date) VALUES (3, '2020-07-13 13:26:42', '2020-07-13 13:26:44', 'The COVID-19 pandemic in Sri Lanka is part of the worldwide pandemic of coronavirus disease 2019', 'Corona Virus Pandemic', '2020-01-08');

INSERT INTO sahanadara.location (id, creation_timestamp, update_timestamp, latitude, longitude) VALUES (1, '2020-07-13 13:52:57', '2020-07-13 13:53:00', '6.6624487', '80.6904778');
INSERT INTO sahanadara.location (id, creation_timestamp, update_timestamp, latitude, longitude) VALUES (2, '2020-07-13 14:10:37', '2020-07-13 14:10:39', '6.6624487', '80.6905778');

INSERT INTO sahanadara.relief_type (id, creation_timestamp, update_timestamp, name) VALUES (1, '2020-07-13 11:29:22', '2020-07-13 11:29:24', 'Food and Dry Ration');
INSERT INTO sahanadara.relief_type (id, creation_timestamp, update_timestamp, name) VALUES (2, '2020-07-13 11:29:45', '2020-07-13 11:29:47', 'Donation');
INSERT INTO sahanadara.relief_type (id, creation_timestamp, update_timestamp, name) VALUES (3, '2020-07-13 11:31:30', '2020-07-13 11:31:31', 'Temporary Accommodations and Relocation');
INSERT INTO sahanadara.relief_type (id, creation_timestamp, update_timestamp, name) VALUES (4, '2020-07-13 11:30:18', '2020-07-13 11:30:19', 'Healthcare and Medical Support');
INSERT INTO sahanadara.relief_type (id, creation_timestamp, update_timestamp, name) VALUES (5, '2020-07-13 11:32:50', '2020-07-13 11:32:48', 'Transportation Facility');

INSERT INTO sahanadara.user (id, creation_timestamp, update_timestamp, contact_number, email, name, user_type) VALUES (1, '2020-07-13 12:23:27', '2020-07-13 12:23:30', '0715902989', 'contact@chathurabuddi.lk', 'Chathura Buddhika', 'VOLUNTEER');
INSERT INTO sahanadara.user (id, creation_timestamp, update_timestamp, contact_number, email, name, user_type) VALUES (2, '2020-07-13 12:24:19', '2020-07-13 12:24:19', '0715896756', 'imalka@gmail.com', 'Imalka Sandeep', 'USER');
INSERT INTO sahanadara.user (id, creation_timestamp, update_timestamp, contact_number, email, name, user_type) VALUES (3, '2020-07-13 12:25:08', '2020-07-13 12:25:09', '0715896757', 'sanka@gmail.com', 'Sanka Sandaruwan', 'USER');
INSERT INTO sahanadara.user (id, creation_timestamp, update_timestamp, contact_number, email, name, user_type) VALUES (4, '2020-07-13 12:25:58', '2020-07-13 12:25:59', '0715896758', 'amila@gmail.com', 'Amila Udayanga', 'USER');
INSERT INTO sahanadara.user (id, creation_timestamp, update_timestamp, contact_number, email, name, user_type) VALUES (5, '2020-07-13 12:26:38', '2020-07-13 12:26:39', '0715896759', 'mahinda@gmail.com', 'Mahinda Karunathilaka', 'USER');

INSERT INTO sahanadara.relief_request (id, creation_timestamp, update_timestamp, description, title, requesting_user_id, completed, associated_incident_id, location_id) VALUES (1, '2020-07-13 14:11:44', '2020-07-13 14:11:45', 'Please provided foods & dry rations to the Balangoda town area.', 'Request for Foods', 2, false, 1, 1);
INSERT INTO sahanadara.relief_request (id, creation_timestamp, update_timestamp, description, title, requesting_user_id, completed, associated_incident_id, location_id) VALUES (2, '2020-07-13 14:21:41', '2020-07-13 14:21:37', 'We lost our houses due to the bombings. Appreciate if someone can provide us temporary accommodation until we rebuild our houses.', 'Request for Accommodation', 3, false, 2, 2);
INSERT INTO sahanadara.relief_request (id, creation_timestamp, update_timestamp, description, title, requesting_user_id, completed, associated_incident_id, location_id) VALUES (3, '2020-07-13 14:22:32', '2020-07-13 14:22:34', 'Please provide medicine and medical support for us. There are so many injured people due to the bombing and those poor people do not have sufficient money to buy medicine', 'Request for Medicine', 3, false, 2, 2);

INSERT INTO sahanadara.relief (id, creation_timestamp, update_timestamp, relief_type_id, description, distributed_location_id, incident_id, volunteer_id, completed, title, relief_request_id) VALUES (1, '2020-07-13 14:24:57', '2020-07-13 14:24:58', 1, 'There are 1500 food packets to be distributed for affected people from balangoda area due to the heavy flood', 1, 1, 1, true, 'Food packets for people in Balangoda area', 1);

