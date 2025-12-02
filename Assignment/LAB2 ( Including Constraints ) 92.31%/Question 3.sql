CREATE TABLE title_copy(
  	copy_id	   INT					  PRIMARY KEY,
	title_id  	 INT 					NOT NULL,
  	status 	 	VARCHAR(15)		 NOT NULL,
  	FOREIGN KEY	(title_id)
  	REFERENCES title(title_id)
);