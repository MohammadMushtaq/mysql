create database btm;
use btm;


CREATE TABLE  festival_details(
  f_id INT NOT NULL,
  f_name VARCHAR(45) NOT NULL,
  f_date INT NOT NULL,
  f_state VARCHAR(45) NOT NULL,
  PRIMARY KEY (f_id, f_name, f_date, f_state));

  select*from festival_details;

CREATE TABLE `btm`.`country_details` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_code` INT NOT NULL,
  `continent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`c_id`, `c_name`, `c_code`, `continent`));
select*from country_details;
  
  
  CREATE TABLE `btm`.`state_details` (
  `s_id` INT NOT NULL,
  `s_name` VARCHAR(45) NOT NULL,
  `s_code` INT NOT NULL,
  `s_capital` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`s_id`, `s_name`, `s_code`, `s_capital`));
  
  select*from state_details;

CREATE TABLE `btm`.`city_details` (
  `c_id` INT NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_population` DOUBLE NOT NULL,
  `c_famousfor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`c_id`, `c_population`, `c_name`, `c_famousfor`));
  
  select*from btm.city_details;
  
create table btm.clubDetails(
cid int primary key,
cname varchar(30) not null,
clocation varchar(40),
cbouncers int
);
select*from clubDetails;

create TABLE `btm`.`icecreamdetails` (
  `c_id` INT NOT NULL,
  `c_flavor` VARCHAR(45) NOT NULL,
  `c_name` VARCHAR(45) NOT NULL,
  `c_price` INT NOT NULL
);

select*from icecreamdetails;

