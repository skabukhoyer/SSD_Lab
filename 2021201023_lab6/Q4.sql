
use company;

select D2.Dnumber , D2.Dname, count(*) as No_of_location from department D2, dept_locations Dl where 
D2.Dnumber=Dl.Dnumber and D2.Dnumber in
( select D.Dnumber from department D , dependent Dt where
 D.Mgr_ssn=Dt.Essn and Dt.Sex='F' 
 group by D.Mgr_ssn having count(*)>=2 ) group by Dl.Dnumber;