
use company;
select d.Mgr_ssn, d.Dnumber, count(*) as No_of_dep from department d, dependent dt where  d.Dnumber 
in (select dl.Dnumber from dept_locations dl group by dl.Dnumber having count(*)>=2 ) and d.Mgr_ssn=dt.Essn 
group by d.Mgr_ssn ;