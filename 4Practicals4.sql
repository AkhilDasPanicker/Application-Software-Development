
create table employ(eno number(10),ename varchar(20),jov varchar(20),salary number(10),dno number(5),grade varchar(20));

insert into employ values(1,'abc','clerk',50000,10,'a');
insert into employ values(2,'bcd','manager',100000,30,'c');
insert into employ values(3,'cde','it prof',200000,20,'d');
insert into employ values(4,'def','manager',150000,20,'f');

create table dept2(dno number(10),dname varchar(20),location varchar(20));

insert into dept2 values(10,'banking','chennai');
insert into dept2 values(20,'it','bangalore');
insert into dept2 values(30,'finance','delhi');
insert into dept2 values(40,'hr','hydrabad');

create table salgrade(grade varchar(20),low_sal number(10),high_sal number(10));

insert into salgrade values('a',20000,50000);
insert into salgrade values('b',50001,99999);
insert into salgrade values('c',100000,149999);
insert into salgrade values('d',200000,250000);
insert into salgrade values('e',150000,199999);

select dname from dept2 where dno in (select dno from employ);

select ename from employ where salary>(select salary from employ where ename='bcd');

select ename from employ where jov in (select jov from employ where ename='def') and ename!='def'; 

select ename,salary from employ where salary>(select sum(salary) from employ where dno=30);

select low_sal from salgrade where grade=(select grade from employ where ename='abc');

select dname from dept2 where dno=(select dno from employ where salary=(select max(salary) from employ));

select avg(salary) from employ where dno in(select dno from dept2 where dname='it');

select * from employ where jov in ('manager','it prof') and salary=(select salary from employ where salary>=170000) and dno in(select dno from dept2 where dname='it');

select ename,jov from employ where dno in(select dno from dept2 where dname='it') order by ename;

select ename from employ e,salgrade s where e.grade=s.grade and e.salary>((s.low_sal+high_sal)/2);

select dname from dept2 where dno=(select dno from employ group by dno having count(dno)>(select count(dno) from employ where dno=(select dno from dept2 where dname='banking')));
select * from employ;
 
drop table dept2;
drop table salgrade;
drop table employ;
