select * from employee;

select ename, dno, hiredate, salary
from employee
where salary between 2000 and 3000
order by ename asc;

commit;

select commission, ename, hiredate, dno
from employee
where commission is null
order by dno asc;

commit;

select dno, ename, salary, commission
from employee
where commission in(300, 500, 1400)
order by commission  desc;

commit;

select ename
from employee
where ename LIKE 'S%';

commit;

select ename hiredate
from employee
where hiredate not like '81%';

commit;

select distinct dno
from employee
order by dno asc;

commit;

select ename
from employee
where ename like '%A%'
and ename like '%E%';

commit;

select dno, ename, hiredate
from employee
where substr(hiredate,4,2) = '12';

select ename, salary, commission,
salary*12+nvl(commission,0) as "연봉"
from employee
order by salary*12+nvl(commission,0) desc;
 
 commit;
 
 select ename, salary, commission,
 NVL2(commission, salary*12+commission, salary*12)
 from employee
 order by salary*12+nvl(commission,0) 
 
commit;

select max(salary) as 최고액, min(salary) as 최소액,
sum(salary) as 총액, round(avg(salary)) as 평균액
from employee;

commit;

select count (job) as "직업 종류의 갯수"
from employee;

commit;

select dno as "부서번호", round(avg(salary)) as "평균월급"
from employee
group by dno;

commit;

select count(job)
from employee
group by job;

commit;

select job, min(salary)
from employee
where manager is not null
group by job
having min(salary) > 2000
order by min(salary) desc;

commit;

select ename as "담당 이름", job as "담당업무"
from employee
where job = (select job from employee where eno = 7788);

commit;

select ename as "담당 이름", job as "담당업무"
from employee
where salary > (select salary from employee where eno = 7499);

commit;

select ename, job, salary
from employee
where salary = (select min(salary) from employee);

commit;

select * from employee;

select ename, dno, salary
from employee
where salary > (select avg(salary) from employee)
order by salary;

commit;

select dno, ename, job
from employee
where dno = (select dno from department where dname = 'RESEARCH');

commit;