CREATE TABLE MEMBER2 (
    member_id   INT(10),
    last_name   VARCHAR(25) NOT NULL,
    first_name  VARCHAR(25),
    address	    VARCHAR(100),
    city        VARCHAR(30),
    PRIMARY KEY `MEMBER2_mem_key` (member_id)
);