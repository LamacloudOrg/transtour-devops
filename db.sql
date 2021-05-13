CREATE TABLE IF NOT EXISTS roles(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    CONSTRAINT role_name UNIQUE (name),
    CONSTRAINT pk_role_id PRIMARY KEY (id)
)  ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS users(
    id int NOT NULL AUTO_INCREMENT,
    user_name varchar(50) NOT NULL ,
    password varchar(100) NOT NULL ,
    first_name varchar(50),
    last_name varchar(50),
    enabled  bit(1) NOT NULL DEFAULT 0,
    CONSTRAINT uniq_user_name UNIQUE (user_name),
    CONSTRAINT pk_user_id PRIMARY KEY (id)
)  ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS user_role(
    id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    role_id int NOT NULL,
    CONSTRAINT pk_user_role PRIMARY KEY (id),
    CONSTRAINT uniq_user_role unique (user_id,role_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)

)ENGINE=InnoDB;


ALTER TABLE users
ADD UNIQUE INDEX username_index (user_name ASC) ;

INSERT INTO roles (`name`)
VALUES ('ROLE_ADMIN')

INSERT INTO roles (`name`)
VALUES ('ROLE_USER')

INSERT INTO roles (`name`)
VALUES ('ROLE_DRIVER')



INSERT INTO users (`user_name`, `password`, `first_name`, `last_name`, `enabled`)
VALUES ('kike.transtour@gmail.com', 'gpw5LY9MmjOEmQCOu25TzONp1mm4eSjsEfEmCxsFKnkldLE4qJbeO', 'kike','apellido',1)

INSERT INTO users (`user_name`, `password`, `first_name`, `last_name`, `enabled`)
VALUES ('carlos.transtour@gmail.com', 'gpw5LY9MmjOEmQCOu25TzONp1mm4eSjsEfEmCxsFKnkldLE4qJbeO', 'carlos','lfws',3)



INSERT INTO users (`user_name`, `password`, `first_name`, `last_name`, `enabled`)
VALUES ('pablo.transtour@gmail.com', 'gpw5LY9MmjOEmQCOu25TzONp1mm4eSjsEfEmCxsFKnkldLE4qJbeO', 'pablo','lfws',3)



INSERT INTO user_role (`user_id`,`role_id`)
VALUES (1,1)

INSERT INTO user_role (`user_id`,`role_id`)
VALUES (2,3)

INSERT INTO user_role (`user_id`,`role_id`)
VALUES (3,3)

commit;


