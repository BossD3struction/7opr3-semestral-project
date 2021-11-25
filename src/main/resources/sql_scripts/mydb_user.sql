create table user
(
    pk_user_id bigint auto_increment
        primary key,
    nickname   varchar(45)  not null,
    email      varchar(90)  not null,
    password   varchar(130) not null,
    is_admin   bit          not null
);

INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (1, 'GreenGoblin75', 'joe.doe@gmail.com', 'wkpcmsknke165165', true);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (2, 'DocOc1258', 'peter.small@gmail.com', 'felmvl;vr474', false);