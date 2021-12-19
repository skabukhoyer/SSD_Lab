
use company;
select D.Mgr_ssn, count(*) as No_of_project from department D, project P2 where D.Dnumber in
(select P.Dnum from project P where P.Pname='ProductY' ) and 
P2.Dnum=D.Dnumber group by P2.Dnum ;