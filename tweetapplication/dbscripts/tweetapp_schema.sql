create database tweetapp;

use tweetapp;

CREATE TABLE user(
us_first_name varchar(60) not null,
us_last_name varchar(60) ,
us_gender varchar(60) not null,
us_dob date null,
us_email varchar(60),
us_password varchar(60) not null,
us_isactive boolean,
primary key(us_email));

create table post(
id int auto_increment,
message varchar(256) not null,
us_email varchar(60),
date_of_post timestamp DEFAULT CURRENT_TIMESTAMP, 
primary key(id,us_email),
constraint user_tweet_fk foreign key (us_email)
references user (us_email) on delete cascade );


INSERT INTO user  (`us_first_name`, `us_last_name`, `us_gender`, `us_dob`, `us_email`, `us_password`, `us_isactive`)
 VALUES ('Pravin', 'Richard', 'Male', '1998-05-11', 'pravin@gmail.com', 'password123', '0'),
 ('Sherlock', 'Holmes', 'Male', '1983-01-06', 'sh@gmail.com', 'sh221b', '0');
 
 
 INSERT INTO post(message,us_email)values('I am a huge fan of SH','pravin@gmail.com'),('The Game is on','sh@gmail.com');
