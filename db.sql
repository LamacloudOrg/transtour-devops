CREATE TABLE IF NOT EXISTS `transtour.roles`(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    CONSTRAINT role_name UNIQUE (name),
    CONSTRAINT pk_role_id PRIMARY KEY (id)
)  ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS `transtour.users`(
    id int NOT NULL AUTO_INCREMENT,
    user_name varchar(50) NOT NULL ,
    password varchar(10) NOT NULL ,
    first_name varchar(50),
    last_name varchar(50),
    enabled  bit(1) NOT NULL DEFAULT 0,
    CONSTRAINT uniq_user_name UNIQUE (user_name),
    CONSTRAINT pk_user_id PRIMARY KEY (id)
)  ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `transtour.user_role`(
    id int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    role_id int NOT NULL,
    CONSTRAINT pk_user_role PRIMARY KEY (id),
    CONSTRAINT uniq_user_role unique (user_id,role_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)

)  ENGINE=InnoDB;


ALTER TABLE `transtour.users`
ADD UNIQUE INDEX username_index (username ASC) ;

INSERT INTO `users` (`user_name`, `password`, `first_name`, `last_name`, `enabled`)
VALUES ('kike.transtour@gmail.com', '1A_23#', 'kike','apellido',1)

INSERT INTO `roles` (`name`)
VALUES ('ROLE_ADMIN')

INSERT INTO `user_role` (`user_id`,`role_id`)
VALUES (1,1)

commit;


