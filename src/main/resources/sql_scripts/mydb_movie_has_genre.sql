create table movie_has_genre
(
    pk_fk_movie_id bigint not null,
    pk_fk_genre_id bigint not null,
    primary key (pk_fk_movie_id, pk_fk_genre_id),
    constraint FK9h6d7q4xsyff2apgea8cvbmmq
        foreign key (pk_fk_movie_id) references movie (pk_movie_id),
    constraint FKsmtwrwca7l1jaul4p7e8nxp13
        foreign key (pk_fk_genre_id) references genre (pk_genre_id)
);

INSERT INTO mydb.movie_has_genre (pk_fk_movie_id, pk_fk_genre_id) VALUES (9, 1);
INSERT INTO mydb.movie_has_genre (pk_fk_movie_id, pk_fk_genre_id) VALUES (12, 1);
INSERT INTO mydb.movie_has_genre (pk_fk_movie_id, pk_fk_genre_id) VALUES (12, 2);
INSERT INTO mydb.movie_has_genre (pk_fk_movie_id, pk_fk_genre_id) VALUES (9, 4);
INSERT INTO mydb.movie_has_genre (pk_fk_movie_id, pk_fk_genre_id) VALUES (11, 4);
INSERT INTO mydb.movie_has_genre (pk_fk_movie_id, pk_fk_genre_id) VALUES (9, 5);
INSERT INTO mydb.movie_has_genre (pk_fk_movie_id, pk_fk_genre_id) VALUES (11, 5);
