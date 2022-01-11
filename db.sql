
CREATE DATABASE test;

USE test;

CREATE TABLE `product` (
  `id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(64) NOT NULL,
	`image` VARCHAR(128) NOT NULL,
	`contractAddr` VARCHAR(256) DEFAULT NULL,
	`registeredDate` DATETIME NOT NULL,
	`isDeleted` INT NOT NULL,
	`symbol` VARCHAR(64) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE = INNODB AUTO_INCREMENT = 22 DEFAULT CHARSET = utf8;

CREATE TABLE `receipt` (
  `id` INT NOT NULL AUTO_INCREMENT,
	`sellerID` INT NOT NULL,
	`productID` INT NOT NULL,
	`tokenID` BIGINT NOT NULL,
	`tokenURI` VARCHAR(256) NOT NULL,
	`contractAddr` VARCHAR(256) NOT NULL,
	`fromAddr` VARCHAR(256) NOT NULL,
	`toAddr` VARCHAR(256) NOT NULL,
	`registeredDate` DATETIME NOT NULL,
	`lastUpdatedDate` DATETIME NOT NULL,
	`isDeleted` INT NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE = INNODB AUTO_INCREMENT = 29 DEFAULT CHARSET = utf8;
