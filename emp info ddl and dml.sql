/* 
Author: Bhavana Nalla
Change: 2/2/2019

i.      Personal details
ii.     Job/Education profile
iii.    Salary details

Use this command to set change default schema
    
alter session set current_schema = empinfo;
    
*/

CREATE TABLE personaldetails
(
  empid int PRIMARY KEY,
  empfirstname Varchar(50),
  emplastname Varchar(50),
  empemail   Varchar(50)
  );
  
  INSERT INTO personaldetails(empid,empfirstname,emplastname,empemail)
  SELECT 1001,'John','newman','john.newman@yahoo.com' from dual
  UNION
  SELECT 1002 ,'Mary','falala','mfalala@yahoo.com' from dual
  UNION
  SELECT 1003,'Jeremy','gorden','jgorden@yahoo.com' from dual
  UNION
  SELECT 1004,'Patrick','Alverec','apatrick@yahoo.com' from dual
  UNION
  SELECT 1005,'Mary','kay','jgorden@yahoo.com' from dual
  UNION
  SELECT 1006,'meenu','nalla','meenu@yahoo.com' from dual
  UNION
  SELECT 1007,'Brian','Fedrick','bfedrick@yahoo.com' from dual
  UNION
  SELECT 1008,'Mo','williams','Mwilliams@yahoo.com' from dual
  UNION
  SELECT 1009,'Randy','House','rhouse@yahoo.com' from dual
  UNION
  SELECT 1010,'julie','barnard','jbarnard@yahoo.com' from dual;
  
  
  CREATE TABLE empprofile
  (
    empid int, 
    qualification varchar(50),
    title varchar(50),
    experience int,
    Constraint FK_PersonalDetails_EmpProfile
        Foreign key (empid)
    References personaldetails(empid)
    );
    
    INSERT INTO empprofile(empid,qualification,title,experience)
    SELECT  1001, 'CS Masters', 'Sr Developer', 9 FROM DUAL
    UNION
    SELECT  1002, 'Bachelors', 'Developer', 3 FROM DUAL
    UNION
    SELECT  1003, 'Masters', 'Sr Developer', 7 FROM DUAL
    UNION
    SELECT  1004, 'Fine Arts', 'Business Analyst', 4 FROM DUAL
    UNION
    SELECT  1005, 'Political Science', 'Business Analyst', 4 FROM DUAL
    UNION
    SELECT  1006, 'Executive MBA', 'Sr Director', 14 FROM DUAL
    UNION
    SELECT  1007, 'CS Masters', 'Sr Developer', 9 FROM DUAL
    UNION
    SELECT  1008, 'Financial MBA', 'CFP', 20 FROM DUAL
    UNION
    SELECT  1009, 'PHD', 'Sr Data Scientist', 12 FROM DUAL
    UNION
    SELECT  1010, 'Bachelors In CS', 'Sr Developer', 9 FROM DUAL;
    
   CREATE TABLE salarydetails
   (
     empid int,
     salary number(10,2),
     bonus int,
     Constraint FK_pdetails_salarydetails
        Foreign key (empid)
    References personaldetails(empid)
     );
     
     INSERT INTO salarydetails(empid,salary,bonus)
     SELECT  1001, 120000,15 FROM DUAL
    UNION
    SELECT  1002, 90000,10 FROM DUAL
    UNION
    SELECT  1003, 130000, 7 FROM DUAL
    UNION
    SELECT  1004, 80000, 4 FROM DUAL
    UNION
    SELECT  1005, 101000, 4 FROM DUAL
    UNION
    SELECT  1006, 190000, 25 FROM DUAL
    UNION
    SELECT  1007, 125000, 15 FROM DUAL
    UNION
    SELECT  1008, 320000,35 FROM DUAL
    UNION
    SELECT  1009, 150000, 20 FROM DUAL
    UNION
    SELECT  1010, 134000, 15 FROM DUAL;