drop database if exists world;

create database world;
use world;

create table user(
	id serial primary key,
	username varchar(20), 
	password char(40));
	
insert into user values(null, 'admin', SHA('2016'));


	