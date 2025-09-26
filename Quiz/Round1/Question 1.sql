CREATE TABLE employees(
    employee_id	INT(11),
    theater_id	INT(11) NOT NULL,
    email		VARCHAR(100) NOT NULL,
    first_name	VARCHAR(50) NOT NULL, 
    last_name	VARCHAR(50) NOT NULL,	 
    gender		VARCHAR(6) NOT NULL,	 
    salary		INT NOT NULL,	 
    role		VARCHAR(50) NOT NULL,	 
    hire_date	DATE NOT NULL, 
    phone		VARCHAR(20) NOT NULL,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (theater_id)
    REFERENCES  theaters(theater_id),
    UNIQUE	    (email)
);