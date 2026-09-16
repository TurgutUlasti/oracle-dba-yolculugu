 -- Number  To Binary
 CREATE OR REPLACE FUNCTION num2bin (x IN number) RETURN VARCHAR2 IS 
 binval   Varchar2(120):=null;
 x2  number :=x;
 BEGIN
 WHILE (x2 >0) LOOP
 binval :=mod(x2,2)|| binval;
 x2:= trunc(x2/2);
END LOOP;
RETURN(binval);
 END;
 /
 select ASCII('C'), num2bin(ASCII('C')),ASCII('Ç'), num2bin(ASCII('Ç')),ASCII('Z'), num2bin(ASCII('Z')),
 num2bin(17), num2bin(2)
 from dual;
 select sysdate, TO_CHAR(sysdate,'DD/MM/YYYY') FROM DUAL;
 
 
 select employee_id ,first_name,last_name,num2bin(ASCII(SUBSTR(first_name,1,1)))
    ,ASCII(SUBSTR(first_name,1,1)) from emp2
     order by first_name; 

select parameter, value from nls_session_parameters;

--SYS conn     
select name,value,isses_modifiable from V$parameter where name ='nls_sort';

--Nls_date_format , nls_date_language
select name,value,isses_modifiable from v$parameter2
   where name in('nls_date_format','nls_date_language');
-- parameter sorgu  
   select *from nls_session_parameters;
--Alter Nls_date_format , nls_date_language
alter session set  nls_date_language='TURKISH';
alter session set nls_date_format='DD/MON/YYYY';
Alter session set nls_date_format ='DD/MM/YYYY';