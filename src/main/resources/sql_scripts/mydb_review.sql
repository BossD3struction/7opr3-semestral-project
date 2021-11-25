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

