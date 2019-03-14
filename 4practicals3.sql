create table department(deptno varchar(2) primary key,deptname varchar(5),staffno varchar(5)); 
insert into department values('D1','CS','S101');
insert into department values('D2','EC','S110');
insert into department values('D1','EE','S201');

create table books(title varchar(20) primary key,author varchar(20));
insert into books values('DBMS','Navathe');
insert into books values('C','Dennis Richie');
insert into books values('DBMS','Korth');

create table library(title varchar(10) references books,author varchar(15),num_of_cpy number(4));
drop table library;
create table library(title varchar(10) references books primary key,author varchar(15) primary key,num_of_cpy number(4));
insert into library values('C','Dennis Richie',5);
insert into library values('DBMS','Navathe',10);
insert into library values('OS','Korth',20);

create table s1(rollno number(2) primary key,name varchar(15),dno varchar(4),foreign key (dno) references department);
insert into s1 values(10,'Aswathy','D1');
insert into s1 values(20,'Akash','D3');
insert into s1 values(30,'Arun','D2');

insert into books values('','Navathe');

desc department;

create table account(accno number(10) primary key,amount number(10) check(amount>250));
insert into account values(147,1000);
insert into account values(210,5000);
insert into account values(777,100);
insert into account values(623,5001);

drop table department;
drop table books;
drop table library;
drop table s1;
drop table account;









