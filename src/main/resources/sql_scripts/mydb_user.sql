create table user
(
    pk_user_id bigint auto_increment
        primary key,
    nickname   varchar(45)  not null,
    email      varchar(90)  not null,
    password   varchar(130) not null,
    is_admin   bit          not null
);

INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (1, 'GreenGoblin75', 'joe.doe@gmail.com', '$2a$10$M/F4fFQQ87fahvYNy0xZ/uCDDW64GULARhJWnsqPE0vP0gqqGEEeO', true);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (2, 'DocOc1258', 'peter.small@gmail.com', 'felmvl;vr474', false);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (3, 'BigKarelPrague', 'karel@gmail.com', 'wlmlemkvmfef548', false);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (4, 'lucie48', 'lucie.small@seznam.cz', 'fe;m,velmlvre51', true);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (5, 'ThisComesFromPostmanUPDATED', 'HELLOTHERE@gmail.com', '$2a$10$8sgg4Be6SYajYu/MIrXI7eCMhLGYqYo7cKknlJE3c3j6.GHu9UCIC', true);
