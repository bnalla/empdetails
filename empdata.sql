select /*csv*/* from EMPINFO.personaldetails;

SELECT EMPID ,
QUALIFICATION ,
TITLE ,
EXPERIENCE  FROM EMPINFO.empprofile;

SELECT EMPID ,
EMPFIRSTNAME ,
EMPLASTNAME ,
EMPEMAIL  FROM EMPINFO.personaldetails;

SELECT EMPID ,
SALARY ,
BONUS  FROM EMPINFO.salarydetails;


SELECT /*csv*/ pd.Empid, pd.EMPFIRSTNAME ,pd.EMPLASTNAME,ep.title,sd.salary,sd.bonus
FROM EMPINFO.personaldetails pd 
INNER JOIN EMPINFO.empprofile ep ON ep.empid=pd.empid
INNER JOIN EMPINFO.salarydetails sd ON sd.empid=pd.empid
--WHERE sd.salary>90000

