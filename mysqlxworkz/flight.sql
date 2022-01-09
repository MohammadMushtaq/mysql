SELECT * FROM flight.flight_details;
use flight;
CREATE TABLE `flight`.`company_details` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_type` VARCHAR(45) NOT NULL,
  `c_domain` VARCHAR(45) NOT NULL,
  `c_website` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`c_id`));



  select*from company_details;
CREATE TABLE `flight`.`state_details` (
  `s_id` INT NOT NULL,
  `s_name` VARCHAR(45) NOT NULL,
  `s_no_of_dist` VARCHAR(45) NOT NULL,
  `s_capital` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`s_id`));
  
  select*from state_details;
  
  CREATE TABLE `flight`.`countrydetails` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_continent` VARCHAR(45) NOT NULL,
  `c_population` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`c_id`));
 
 select*from countrydetails;
 
 CREATE TABLE `flight`.`city_details` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_population` DOUBLE NOT NULL,
  `c_famous_for` VARCHAR(45) NOT NULL,
  `c_corona_zone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`c_id`));

select*from city_details;

CREATE TABLE `flight`.`patient_details` (
  `p_id` INT NOT NULL,
  `p_name` VARCHAR(45) NOT NULL,
  `p_birth_place` VARCHAR(45) NOT NULL,
  `p_corona` TINYINT NOT NULL,
  `p_age` FLOAT NOT NULL,
  `p_bu_no` INT NOT NULL,
  PRIMARY KEY (`p_id`));
  select*from patient_details;
  
  ALTER TABLE patient_details MODIFY p_corona int;
    ALTER TABLE patient_details MODIFY p_corona varchar(10);