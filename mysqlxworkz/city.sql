create database city;
use city;
CREATE TABLE `city`.`city_details` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_population` DOUBLE NOT NULL,
  `c_famousfor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`c_id`, `c_population`, `c_name`, `c_famousfor`));

select*from city_details;