1
create table product(pdtid number(10),pdtname varchar(20),unitprice number(10),manufacturer varchar(20),categoory varchar(20),country varchar(10));
drop table product;
2
insert into product values(101,'iphone8',80000,'apple','mobile','usa');
insert into product values(102,'mi6',32000,'xiaomi','mobile','china');
insert into product values(173,'ideapad',45000,'lenovo','laptop','korea');
insert into product values(178,'jazz',2000,'zoook','speaker','germany');
insert into product values(217,'cruzer',5000,'titan','watch','india');
insert into product values(200,'zappa',10000,'philips','home appliance','korea');
select * from product;
3
create view v1 as select pdtid,pdtname,categoory from product;
drop view v1;
4
select pdtname,country from v1 where categoory='home appliance';
5
insert into v1 values(501,'xy505','mobile');
6
update v1 set pdtname='Xseries' where pdtid=200;
select * from v1;
7
alter table product modify pdtid primary key;
8
create view v2 as select pdtname,unitprice,categoory from product;
drop view v2;
9
insert into v2 values('ipad',50000,'tablet');
10
delete from v1 where pdtname='lenovo';

create table employee(eid number(10),ename varchar(15),salary number(10),hiredate date,dno number(10));
select * from employee;
drop table employee;
insert into employee values(1,'abc',80000,'1-1-2001',10);
insert into employee values(2,'def',32000,'6-6-2006',20);
insert into employee values(3,'hij',45000,'17-9-2003',30);
insert into employee values(4,'klm',2000,'20-8-2004',40);
insert into employee values(5,'nop',5000,'1-5-2005',50);




create table deptmnt(dno number(10),dname varchar(15),mgrid number(10));
drop table deptmnt;
insert into deptmnt values(10,'cse',2);
insert into deptmnt values(20,'ece',11);
insert into deptmnt values(30,'eee',3);
insert into deptmnt values(40,'civil',7);
insert into deptmnt values(50,'mech',6);

11
create view v3 as select e.eid,e.ename,e.salary,e.dno,d.dname from employee e,deptmnt d where e.dno=d.dno;
drop view v3;
12
update v3 set salary=salary+1000 where dno=10;
13
alter table deptmnt modify dno number(10) primary key;
14
alter table employee modify(primary key(eid),foreign key(dno) references deptmnt(dno));
15
insert into v3 values('hey',72900,17,'it');



