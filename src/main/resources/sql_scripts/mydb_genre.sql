create table genre
(
    pk_genre_id bigint auto_increment
        primary key,
    name        varchar(45) not null
);

INSERT INTO mydb.genre (pk_genre_id, name) VALUES (1, 'Action');
INSERT INTO mydb.genre (pk_genre_id, name) VALUES (2, 'Adventure');
INSERT INTO mydb.genre (pk_genre_id, name) VALUES (3, 'Horror');
INSERT INTO mydb.genre (pk_genre_id, name) VALUES (4, 'Drama');
INSERT INTO mydb.genre (pk_genre_id, name) VALUES (5, 'Romance');
INSERT INTO mydb.genre (pk_genre_id, name) VALUES (6, 'Thriller');
INSERT INTO mydb.genre (pk_genre_id, name) VALUES (7, 'Comedy');
INSERT INTO mydb.genre (pk_genre_id, name) VALUES (8, 'Mystery');
INSERT INTO mydb.genre (pk_genre_id, name) VALUES (10, 'tohleNeniDobryGenreTest');
INSERT INTO mydb.genre (pk_genre_id, name) VALUES (12, 'test');
