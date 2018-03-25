create database exam;
use exam;
create table user(uname varchar(20),upwd varchar(20),mno varchar(10));
create table ques(ques varchar(100),ans1 varchar(20),ans2 varchar(20),ans3 varchar(20),ans4 varchar(20),rans varchar(20));

create table question_detail(id int(4)primary key auto_increment,quest varchar(100),qa varchar(20),qb varchar (20),qc varchar(20),qd varchar(20),correctans varchar(20));
 create table result(id int(5),username varchar(20),result varchar(10),clgname varchar(20));
