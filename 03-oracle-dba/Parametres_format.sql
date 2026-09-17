-- Nls_sort session bazlı pl/sql kodlama
 select * from employees order by nlssort(first_name,'NLS_SORT=TURKISH');
 ---- sysdate formatlama
 select sysdate , to_char(sysdate,'DD/MM/YYYY'),to_char(sysdate,'DD/MON/YYYY HH24:MI:SS') from dual;
 
 select sysdate,to_char(sysdate,'DD/MM/YYYY') AS T1,
 to_char(sysdate,'DD/MON/YYYY HH24:MI:SS','nls_date_language=TURKISH') AS T2 from dual ;
