CREATE TABLE `user` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (`id`, `username`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6
;
CREATE TABLE `receipt` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name_customer` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_customer` INT(11) NULL DEFAULT NULL,
	`phone_customer` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`id_game` INT(11) NULL DEFAULT NULL,
	`name_game` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`price` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`producer` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`total` DOUBLE(22,0) NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=3
;
CREATE TABLE `game` (
	`id_game` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`price` DOUBLE(22,0) NULL DEFAULT NULL,
	`producer` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`key` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (`id_game`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=10
;
CREATE TABLE `customer` (
	`id_customer` INT(11) NOT NULL AUTO_INCREMENT,
	`id_user` INT(11) NULL DEFAULT NULL,
	`name_customer` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`numberphone` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`mail` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`money` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`id_customer`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;
