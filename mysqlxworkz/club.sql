create database club;
use club;

create table clubDetails(
cid int primary key,
cname varchar(30) not null,
clocation varchar(40),
cbouncers int
);
select*from clubDetails;
desc clubDetails;

