create table genre
(
    pk_genre_id bigint auto_increment
        primary key,
    name        varchar(45) not null
);

INSERT INTO mydb.genre (pk_genre_id, name) VALUES (1, 'Action');
INSERT INTO mydb.genre (pk_genre_id, name) VALUES (2, 'Adventure');