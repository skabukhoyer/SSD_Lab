
use company;
select concat (E.Fname,' ',E.Minit,' ',E.Lname) as Full_name , E.ssn ,E.Dno, D2.Dname from employee E, department D2 where
 E.Dno=D2.Dnumber and E.Ssn in ( select E2.Super_ssn from employee E2  group by E2.Super_ssn );