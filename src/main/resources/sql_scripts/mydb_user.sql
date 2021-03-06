create table user
(
    pk_user_id bigint auto_increment
        primary key,
    nickname   varchar(45)  not null,
    email      varchar(90)  not null,
    password   varchar(130) not null,
    is_admin   bit          not null
);

INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (1, 'GreenGoblin75', 'joe.doe@gmail.com', '$2a$10$SGwfun/UssJEjSomGCDwNuGqdKJffgSZL1AqJ52byGxIITMW2fL9y', true);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (2, 'DocOc1258', 'peter.small@gmail.com', '$2a$10$3t1N726EDSoKStaNYTjbVudx5QBKSTcjBJDQz2ojMwF0i5TJnz0ja', false);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (3, 'BigKarelPrague', 'karel@gmail.com', '$2a$10$wjvss1/n2yHyGhDQQi0yT.NqkpnQeuerWAN1D8iHKZ4lxKe4NKRie', false);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (4, 'lucie48', 'lucie.small@seznam.cz', '$2a$10$545ueqSnfxP5AEZpuNeynOveyrUSp.5P0W1PDdCR0xcxEJCE8cUjO', true);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (5, 'PostmanCreatedUser', 'HELLOTHERE@gmail.com', '$2a$10$8sgg4Be6SYajYu/MIrXI7eCMhLGYqYo7cKknlJE3c3j6.GHu9UCIC', true);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (9, 'willYouRegisterMe', 'registerMe@gmail.com', '$2a$10$DgugMaYYCv4RKTffizv24e/hJLcJU517Dn/wIfS32PqQLNmQCX5V.', false);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (10, 'blue485', 'david@hotmail.com', '$2a$10$FCLZaahSGdX3KGttCIE4buIrvgDBFP1F6YZSv158mK6qOmLrNDrW2', false);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (11, 'newAccount85', 'nice@seznam.cz', '$2a$10$2QxfoTGRVX59FNZRP7t/6u0PGiBcmC6TuMCwJ64seEQXLhtn1HUHm', false);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (14, 'bobbob', 'bobbob@gmail.com', '$2a$10$VMOTZqq7T.PTXAYktquBy.BOQmWZAF9oYYE74ywjMEZLSFET1Zyaq', false);
INSERT INTO mydb.user (pk_user_id, nickname, email, password, is_admin) VALUES (15, 'userAngular', 'angular@seznam.cz', '$2a$10$iCbdc4gNTXMyfoCKfZukcOCM1.reQwrpKGwjbEeJchD8z/4qCZqwO', false);
