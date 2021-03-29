CREATE TABLE IF NOT EXISTS travels(
    travel_id int NOT NULL AUTO_INCREMENT,
    chofer int NOT NULL ,	
    init_date date NOT NULL ,
    hour int NOT NULL ,  
    end_date date NOT NULL, 
    
    PRIMARY KEY(travel_id)
	
)  ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS users(
    user_id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL ,
    password varchar(10) NOT NULL , 
    profile int NOT NULL, 
    
    PRIMARY KEY(user_id)
	
)  ENGINE=InnoDB;

INSERT INTO `users` (`name`, `password`, `profile`)
VALUES ('Juan Sanchez', '1234', '1');
INSERT INTO `users` (`name`, `password`, `profile`)
VALUES ('Pedro Ramirez', '1234', '1');

INSERT INTO `travels` (`chofer`, `init_date`, `end_date`) 
VALUES (1,CURDATE(),CURDATE());
INSERT INTO `travels` (`chofer`, `init_date`, `end_date`) 
VALUES (1,CURDATE(),CURDATE());

commit;


