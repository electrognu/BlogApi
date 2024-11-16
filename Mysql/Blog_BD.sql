
-- -----------------------------------------------------
-- Schema BlogApp_DB
--
-- Base de datos actividad 8
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BlogApp_DB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
USE `BlogApp_DB` ;

-- -----------------------------------------------------
-- Table `BlogApp_DB`.`authors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BlogApp_DB`.`authors` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  `image` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BlogApp_DB`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BlogApp_DB`.`posts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `description` VARCHAR(2500) NOT NULL,
  `creation_date` DATE NOT NULL,
  `categorie` VARCHAR(45) NOT NULL,
  `author_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_posts_author_idx` (`author_id` ASC) VISIBLE,
  UNIQUE INDEX `title_UNIQUE` (`title` ASC) VISIBLE
  CONSTRAINT `fk_posts_author`
    FOREIGN KEY (`author_id`)
    REFERENCES `BlogApp_DB`.`authors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


