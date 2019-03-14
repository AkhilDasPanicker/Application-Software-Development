query_1

create table customers(acc_no number(16),c_name varchar(15),bal_amt number(10),DOJ date);
create table premium_customers(acc_no number(16),c_name varchar(15),bal_amt number(10),DOF date);
create table nonpremium_customers(acc_no number(16),c_name varchar(15),bal_amt number(10),DOF date);

insert into customers values(101,'anu',150000,'12-12-1998');
insert into customers values(102,'anjana',200000,'19-08-1997');
insert into customers values(208,'achu',50000,'8-09-2003');
insert into customers values(305,'gopika',95000,'10-10-2010');
insert into customers values(409,'irene',25000,'4-03-2011');
insert into customers values(111,'dany',100000,'11-05-2010');


select * from customers;
select * from premium_customers;
select * from nonpremium_customers;

drop table customers;
drop table premium_customers;
drop table nonpremium_customers;

set serveroutput on
declare
  cursor s is select * from customers;

begin
 for r in s
 loop
  if r.bal_amt>100000 and r.doj<'01-01-2010' then
   insert into premium_customers values(r.acc_no,r.c_name,r.bal_amt,r.doj);
  else
   insert into nonpremium_customers values(r.acc_no,r.c_name,r.bal_amt,r.doj);
  end if;
 end loop;
end; 


Query_2

create table account_details(accno number(4),cname varchar(15),last_t_date date,amount number(6));
create table inactive_cus(accno number(4),cname varchar(15));

insert into account_details values(101,'anu','08-08-2017',50000);
insert into account_details values(102,'anagha','10-10-2017',100000);
insert into account_details values(103,'elizabeth','17-09-2017',25000);
insert into account_details values(104,'george','06-10-2017',300000);
insert into account_details values(105,'albyn','15-10-2017',650000);

select * from inactive_cus;
select * from ACCOUNT_DETAILS;
drop table inactive_cus;
drop table account_details;

set serveroutput on
declare
 cursor a is select * from account_details;
 
begin
 for l in a
 loop
    if months_between(sysdate,l.last_t_date) < 1 then
     if l.amount<250000 then
       dbms_output.put_line(l.cname || '   Interest is : ' || 0.05*l.amount);
     elsif l.amount>250000 and l.amount<500000 then
       dbms_output.put_line(l.cname || '   Interest is : ' || 0.10*l.amount);
     elsif l.amount>500000 then
     dbms_output.put_line(l.cname || '   Interest is : ' || 0.15*l.amount);
    end if;
   else
     insert into inactive_cus values(l.accno,l.cname);  
  end if;
  end loop;
end;
































































