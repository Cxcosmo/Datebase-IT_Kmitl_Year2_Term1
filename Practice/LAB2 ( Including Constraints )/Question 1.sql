CREATE TABLE MEMBER (
    member_id   INT(10)     PRIMARY KEY,
    last_name   VARCHAR(25)	NOT NULL,
    first_name  VARCHAR(25),
    address     VARCHAR(100),
    city        VARCHAR(30)
);