create table student(rollno number(2) unique not null,name varchar(20), address varchar(18),phoneno number(10),gender varchar(1),branch varchar(3),mark1 number(2),mark2 number(2));
desc student;
alter table student add totalmarks number(3);
alter table student MODIFY address varchar(20);
alter table student drop column gender;
alter table student drop column branch;
alter table student rename column mark1 to m1;
alter table student rename to student1;
drop table student;
desc student1;
drop table student1;

