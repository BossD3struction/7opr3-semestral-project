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
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (5, 5, 10, 'this review is coming from postman EVEN MORE');
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (8, 3, 9, 'It is ok, could be worse');
INSERT INTO mydb.review (pk_review_id, fk_user_id, fk_movie_id, text) VALUES (9, 2, 9, 'It is bad, could be better');
