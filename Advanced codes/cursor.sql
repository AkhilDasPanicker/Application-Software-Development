create table customer(accno number,cname varchar(20),balance number,date_of_join date);
insert into customer values(&accno,'&cname',&balance,'&date');
create table premiumcustomer(accno number,cname varchar(20),balance number,date_of_join date);
create table nonpremiumcustomer(accno number,cname varchar(20),balance number,date_of_join date);
select * from customer;

set serveroutput on
declare
  cursor c1 is select * from customer; 
  t customer %rowtype;
  m number;
begin
  open c1;
  loop
    fetch c1 into t.accno,t.cname,t.balance,t.date_of_join;
    exit when c1 %notfound;
    if t.balance>=100000 and t.date_of_join<'01-01-2010' then
      insert into premiumcustomer values(t.accno,t.cname,t.balance,t.date_of_join);
    else
      insert into nonpremiumcustomer values(t.accno,t.cname,t.balance,t.date_of_join);
    end if;
  end loop;
  close c1;
end;

select * from premiumcustomer;
select * from nonpremiumcustomer;

drop table premiumcustomer;
drop table nonpremiumcustomer;