select sysdate "today",((sysdate)+1)"tommorow"from dual;

select last_day(sysdate)"lastday"from dual;

select add_months(sysdate,-2) "2 months before",add_months(sysdate,2)"2 months after" from dual;

select next_day(sysdate,'monday')"next monday"from dual;

select ceil(months_between ('25-dec-17',sysdate))"months to christmas" from dual;

select ename,to_char (hiredate,'month')as "hire date" from emp;

select min(length(ename)) as "min-length" from emp;

select * from emp where length(ename)>5;

select count(empno) as no_of_emp,to_char(hiredate,'month')as months from emp group by(to_char (hiredate,'month'));

select initcap(ename)"ename" from emp;

select upper(ename)"ename" from emp;

select CONCAT(ename,job) "ejob" from emp;

select substr('mathematics',6,3)from dual;

select replace('malayalam','a','t') as "new" from dual;

select ltrim('oracle','or')from dual;

select rtrim('oracle','le')from dual;

select rpad(lpad('database',12,'.'),15,'-')"TITLE" from dual;

select ename,trunc(sal/30,2) as "daily-pay" from emp;