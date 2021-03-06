SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE TABLE IF NOT EXISTS `jeedom`.`plan` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `object_id` INT(11) NOT NULL,
  `link_type` VARCHAR(127) NULL DEFAULT NULL,
  `link_id` INT(11) NULL DEFAULT NULL,
  `position` TEXT NULL DEFAULT NULL,
  `display` TEXT NULL DEFAULT NULL,
  `css` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_plan_object1_idx` (`object_id` ASC),
  INDEX `unique` (`object_id` ASC, `link_type` ASC, `link_id` ASC),
  INDEX `object_id` (`object_id` ASC),
  CONSTRAINT `fk_plan_object1`
    FOREIGN KEY (`object_id`)
    REFERENCES `jeedom`.`object` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

