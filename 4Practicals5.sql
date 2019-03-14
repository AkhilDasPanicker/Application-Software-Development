create table accounts(acc_no char(3),acc_name varchar(20),branch_no char(2) ,type char(2), open_date date,cur_bal number);


insert into accounts values('CA1','John','B1','CA', '4-FEB-2016',10000);
insert into accounts values('CA3','Greeshma','B2','CA', '3-MAY-2014',20000);
insert into accounts values('SB4','Liya','B3','SB', '7-APR-2014',40000);
insert into accounts values('SB1','Yadhu','B1','SB', '8-DEC-2016',20000);
insert into accounts values('SB2','Rohit','B2','SB', '7-NOV-2016',10000);
insert into accounts values('CA2','Rohit','B2','CA', '3-OCT-2013',20000);
insert into accounts values('SB3','Linju','B3','SB', '3-SEP-2012',20000);

select avg(cur_bal) from accounts;

select min(cur_bal) from accounts;

select count(acc_no) from accounts;

select acc_name from accounts where cur_bal=(select max(cur_bal) from accounts);

select sum(cur_bal) from accounts;

select branch_no,type,count(type) from accounts group by branch_no,type;

select acc_name,count(type) from accounts group by acc_name having (count(type)>1);

select branch_no ,avg(cur_bal) from accounts group by branch_no;

select branch_no,count(acc_no) from accounts where open_date>'3-JAN-2015' group by branch_no having (count(acc_no)>1);

select branch_no, count(acc_no) from accounts group by branch_no;

select branch_no,count(acc_no) from accounts group by branch_no order by branch_no;

drop table accounts;


