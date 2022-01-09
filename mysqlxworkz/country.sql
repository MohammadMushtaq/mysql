create database country;

use country;

CREATE TABLE `country`.`country_details` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_code` INT NOT NULL,
  `continent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`c_id`, `c_name`, `c_code`, `continent`));
  
  select*from country_details;
  