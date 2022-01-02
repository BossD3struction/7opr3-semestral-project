create table review
(
    pk_review_id bigint auto_increment
        primary key,
    fk_user_id   bigint not null,
    fk_movie_id  bigint not null,
    text         text   not null,
    constraint FKe6nrxx0ukffydwk2w4lj3xvaa
        foreign key (fk_user_id) references user (pk_user_id),
    constraint FKo0tw35ysf0aojmaa17byiny43
        foreign key (fk_movie_id) references movie (pk_movie_id)
);

INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (4, 1, 11, 'docela dobry film');
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (5, 5, 10, 'this review is coming from postman');
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (8, 3, 9, 'It is ok, could be worse');
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (9, 2, 9, 'It is bad, could be better');
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (13, 9, 12, 'proste delo');
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (14, 1, 9, 'this review is coming from angular page');
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (15, 11, 11, 'dobry vecer, film je poggers');
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (16, 1, 12, 'nejlepsi movie EVER!!!!!!!');
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (17, 4, 12, 'nic tohle neporazi, 5/5 hvezdicek');
