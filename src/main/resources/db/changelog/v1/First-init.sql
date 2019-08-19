CREATE TABLE english.users(
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    email VARCHAR(45) NOT NULL ,
    password VARCHAR(45) NOT NULL ,
    PRIMARY KEY (id),
    UNIQUE INDEX email_UNIQUE (email ASC ) VISIBLE);

INSERT INTO english.users(email, password) VALUES ('abc@abc.ru', '1');
INSERT INTO english.users(email, password) VALUES ('def@abc.ru', '1');

CREATE TABLE `english`.`roles` (
                                   `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
                                   `name` VARCHAR(45) NOT NULL,
                                   PRIMARY KEY (`id`),
                                   UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE);
CREATE TABLE `english`.`users_roles` (
                                         `user_id` BIGINT(20) NOT NULL,
                                         `role_id` BIGINT(20) NOT NULL,
                                         INDEX `fk_user_idx` (`user_id` ASC) VISIBLE,
                                         INDEX `fk_roles_idx` (`role_id` ASC) VISIBLE,
                                         CONSTRAINT `fk_users`
                                             FOREIGN KEY (`user_id`)
                                                 REFERENCES `english`.`users` (`id`)
                                                 ON DELETE NO ACTION
                                                 ON UPDATE NO ACTION,
                                         CONSTRAINT `fk_roles`
                                             FOREIGN KEY (`role_id`)
                                                 REFERENCES `english`.`roles` (`id`)
                                                 ON DELETE NO ACTION
                                                 ON UPDATE NO ACTION);

INSERT INTO `english`.`roles` (`name`) VALUES ('USER');
INSERT INTO `english`.`roles` (`name`) VALUES ('MANAGER');
INSERT INTO `english`.`roles` (`name`) VALUES ('ADMIN');

INSERT INTO `english`.`users_roles` (`user_id`, `role_id`) VALUES ('1', '1');