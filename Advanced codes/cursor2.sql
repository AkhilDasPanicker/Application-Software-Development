create table acctdetails(cname varchar(20),accno number,lsttrans date,amt number);
create table inactive(cname varchar(20),accno number);
insert into acctdetails values('&cname',&accno,'&lsttrans',&amt);
drop table acctdetails;
select * from acctdetails;

set serveroutput on
declare
  cursor c1 is select * from acctdetails;
  t acctdetails %rowtype;
begin
  open c1;
  loop
    fetch c1 into t.cname,t.accno,t.lsttrans,t.amt;
    exit when c1 %notfound;
    if months_between(sysdate,t.lsttrans)>=1 then
      insert into inactive values(t.cname,t.accno);
    else
      if t.amt<250000 then
        dbms_output.put_line('Interest: '||t.cname||0.05*t.amt);
     elsif t.amt between 250000 and 500000 then
        dbms_output.put_line('Interest: '||t.cname||0.1*t.amt);
     elsif t.amt>500000 then
      dbms_output.put_line('Interest: '||t.cname||0.15*t.amt);
     end if;
    end if;
    end loop;
  close c1;
end;

select * from inactive;