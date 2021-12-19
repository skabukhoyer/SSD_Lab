
use company;
select concat (E.Fname,' ',E.Minit,' ',E.Lname) as Full_name , E.Ssn ,E.Dno, D2.Dname from employee E, department D2 where E.Dno=D2.Dnumber and  E.Ssn in
(select D.Mgr_ssn from department D where D.Dnumber in
 (select P.Dnum from project P, works_on W where P.Pnumber=W.Pno and W.Hours>=40.0));