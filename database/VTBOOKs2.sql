-- MySQL Script generated by MySQL Workbench
-- Fri May 21 17:11:28 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema vtbooks
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema vtbooks
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vtbooks` DEFAULT CHARACTER SET utf8 ;
USE `vtbooks` ;

-- -----------------------------------------------------
-- Table `vtbooks`.`authors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vtbooks`.`authors` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `aut_id` VARCHAR(25) NOT NULL,
  `aut_name` VARCHAR(45) NULL DEFAULT NULL,
  `aut_note` VARCHAR(1000) NULL DEFAULT NULL,
  `aut_country` ENUM('VN', 'FOR') NULL DEFAULT NULL,
  `creater` VARCHAR(45) NULL DEFAULT NULL,
  `create_date` DATE NULL DEFAULT NULL,
  `updater` VARCHAR(45) NULL DEFAULT NULL,
  `update_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `aut_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 33
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `vtbooks`.`book_categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vtbooks`.`book_categories` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `cat_id` VARCHAR(25) NOT NULL,
  `cat_name` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Category name',
  `cat_note` VARCHAR(1000) NULL DEFAULT NULL,
  `creater` VARCHAR(45) NULL DEFAULT NULL,
  `create_date` DATE NULL DEFAULT NULL,
  `updater` VARCHAR(45) NULL DEFAULT NULL,
  `update_date` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `cat_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `vtbooks`.`book_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vtbooks`.`book_status` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `b_status_id` VARCHAR(10) NOT NULL,
  `b_status` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Status for book table',
  `b_status_note` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `b_status_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `vtbooks`.`books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vtbooks`.`books` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `book_id` VARCHAR(25) NOT NULL,
  `book_name` VARCHAR(300) NULL DEFAULT NULL,
  `book_description` VARCHAR(3000) NULL DEFAULT NULL,
  `cat_id` VARCHAR(25) NULL DEFAULT NULL COMMENT 'Category ID',
  `aut_id` VARCHAR(25) NULL DEFAULT NULL COMMENT 'Author ID',
  `Isdonate` ENUM('Y', 'N') NULL DEFAULT NULL,
  `donator_id` VARCHAR(25) NULL DEFAULT NULL,
  `b_status_id` VARCHAR(25) NULL DEFAULT NULL,
  `pub_id` VARCHAR(25) NULL DEFAULT NULL,
  `creater` VARCHAR(45) NULL DEFAULT NULL,
  `create_date` DATE NULL DEFAULT NULL,
  `updater` VARCHAR(45) NULL DEFAULT NULL,
  `update_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `book_id`),
  UNIQUE INDEX `book_id_UNIQUE` (`book_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `bookStatusFK_idx` (`b_status_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 95
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `vtbooks`.`borrow`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vtbooks`.`borrow` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `borrow_id` VARCHAR(25) NOT NULL,
  `user_id` VARCHAR(25) NULL DEFAULT NULL,
  `book_id` VARCHAR(25) NULL DEFAULT NULL,
  `b_status_id` VARCHAR(25) NULL DEFAULT NULL,
  `borrow_date` DATE NULL DEFAULT NULL,
  `borrow_note` VARCHAR(1000) NULL DEFAULT NULL,
  `return_date` DATE NULL DEFAULT NULL,
  `return_note` VARCHAR(1000) NULL DEFAULT NULL,
  `creater` VARCHAR(45) NULL DEFAULT NULL,
  `create_date` DATE NULL DEFAULT NULL,
  `updater` VARCHAR(45) NULL DEFAULT NULL,
  `update_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `borrow_id`),
  INDEX `borrowStatusFK_idx` (`b_status_id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `vtbooks`.`publishers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vtbooks`.`publishers` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `pub_id` VARCHAR(25) NOT NULL,
  `pub_name` VARCHAR(45) NULL DEFAULT NULL,
  `pub_note` VARCHAR(1000) NULL DEFAULT NULL,
  `creater` VARCHAR(45) NULL DEFAULT NULL,
  `create_date` DATE NULL DEFAULT NULL,
  `updater` VARCHAR(45) NULL DEFAULT NULL,
  `update_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `pub_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 35
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `vtbooks`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vtbooks`.`users` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(25) NOT NULL,
  `user_name` VARCHAR(45) NULL DEFAULT NULL,
  `user_mail` VARCHAR(50) NULL DEFAULT NULL,
  `department` VARCHAR(45) NULL DEFAULT NULL,
  `creater` VARCHAR(45) NULL DEFAULT NULL,
  `create_date` DATE NULL DEFAULT NULL,
  `updater` VARCHAR(45) NULL DEFAULT NULL,
  `update_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`ID`, `user_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4;

USE `vtbooks` ;

-- -----------------------------------------------------
-- procedure GetAllBooks
-- -----------------------------------------------------

DELIMITER $$
USE `vtbooks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllBooks`()
BEGIN
	select b.book_id,
		b.book_name,
        cat.cat_name,
        stt.b_status,
        a.aut_name,
        pub.pub_name,
        b.Isdonate,
        u.user_name
    from books as b
    left join book_categories as cat
    on b.cat_id = cat.cat_id
    left join book_status as stt
    on b.b_status_id = stt.b_status_id
    left join publishers as pub
    on b.pub_id = pub.pub_id
    left join users as u
    on b.donator_id = u.user_id
    left join authors as a
    on b.aut_id = a.aut_id
    order by b.book_id
	;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure GetAuthor
-- -----------------------------------------------------

DELIMITER $$
USE `vtbooks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAuthor`()
BEGIN
	select 	aut.aut_id,
			aut.aut_name,
            aut.aut_country
    from authors aut
    order by aut.aut_name;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure GetBookCategory
-- -----------------------------------------------------

DELIMITER $$
USE `vtbooks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBookCategory`()
BEGIN
	select 	cat.cat_id,
			cat.cat_name
    from book_categories cat
    order by cat.cat_name;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure GetBookStatus
-- -----------------------------------------------------

DELIMITER $$
USE `vtbooks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBookStatus`()
BEGIN
	select 	stt.b_status_id,
			stt.b_status
    from book_status stt
    order by stt.b_status;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure GetBorrowBooks
-- -----------------------------------------------------

DELIMITER $$
USE `vtbooks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBorrowBooks`()
BEGIN
	select br.borrow_id,
		b.book_id,
		b.book_name,
        stt.b_status,
        u.user_name,
        br.borrow_date,
        br.borrow_note,
        br.return_date,
        br.return_note
    from borrow as br
    left join books as b
    on br.book_id = b.book_id
    left join users as u
    on br.user_id = u.user_id
    left join book_status as stt
    on br.b_status_id = stt.b_status_id
    order by stt.b_status
	;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure GetInfoBaseBookID
-- -----------------------------------------------------

DELIMITER $$
USE `vtbooks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInfoBaseBookID`(IN book_id	varchar(25))
BEGIN
	select b.book_id,
		b.book_name,
        b.cat_id,
        b.b_status_id,
        b.pub_id,
        b.donator_id,
        b.aut_id,
        b.book_description,
        cat.cat_name,
        stt.b_status,
        a.aut_name,
        pub.pub_name,
        b.Isdonate,
        u.user_name
    from books as b
    left join book_categories as cat
    on b.cat_id = cat.cat_id
    left join book_status as stt
    on b.b_status_id = stt.b_status_id
    left join publishers as pub
    on b.pub_id = pub.pub_id
    left join users as u
    on b.donator_id = u.user_id
    left join authors as a
    on b.aut_id = a.aut_id
    where b.book_id = book_id
	;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure GetPublisher
-- -----------------------------------------------------

DELIMITER $$
USE `vtbooks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPublisher`()
BEGIN
	select 	pub.pub_id,
			pub.pub_name
    from publishers pub
    order by pub.pub_name;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure GetUsers
-- -----------------------------------------------------

DELIMITER $$
USE `vtbooks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUsers`()
BEGIN
	select 	u.user_id,
			u.user_name,
            u.user_mail,
            u.department
    from users u
    order by u.user_name;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure InsertBooks
-- -----------------------------------------------------

DELIMITER $$
USE `vtbooks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertBooks`(
								IN book_id	varchar(25),
								IN book_name	varchar(300),
								IN book_description	varchar(3000),
								IN cat_id	varchar(25),
								IN aut_id	varchar(25),
								IN Isdonate	enum('Y','N'),
								IN donator_id	varchar(25),
								IN b_status_id	varchar(25),
								IN pub_id	varchar(25),
								IN creater	varchar(45),
								IN create_date	date
								)
BEGIN
	insert into books(
					book_id,
					book_name,
					book_description,
					cat_id,
					aut_id,
					Isdonate,
					donator_id,
					b_status_id,
					pub_id,
					creater,
					create_date
					)
	values (
					book_id,
					book_name,
					book_description,
					cat_id,
					aut_id,
					Isdonate,
					donator_id,
					b_status_id,
					pub_id,
					creater,
					create_date
			);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure UpdateBooks
-- -----------------------------------------------------

DELIMITER $$
USE `vtbooks`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooks`(
								IN pbook_id	varchar(25),
								IN pbook_name	varchar(300),
								IN pbook_description	varchar(3000),
								IN pcat_id	varchar(25),
								IN paut_id	varchar(25),
								IN pIsdonate	enum('Y','N'),
								IN pdonator_id	varchar(25),
								IN pb_status_id	varchar(25),
								IN ppub_id	varchar(25),
								IN pupdater	varchar(45),
								IN pupdate_date	date
                                )
BEGIN
	UPDATE books
	SET book_name = pbook_name,
		book_description = pbook_description,
		cat_id = pcat_id,
		aut_id = paut_id,
		Isdonate = pIsdonate,
		donator_id = pdonator_id,
		b_status_id = pb_status_id,
		pub_id = ppub_id,
		updater = pupdater,
		update_date = pupdate_date
	WHERE book_id = pbook_id ;
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
