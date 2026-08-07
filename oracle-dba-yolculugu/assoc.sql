-- Collection Data Types 1) Associative Array Index By Tables
-- örnek:1 den 10 kadar olan sayıların karesini bulup ekrana yazddıralım 
-- Index ve değer , her ikiside sayısal  wkare(INDEX) := DEĞER;
-- Örnek2 : INDEX tamsayı, Değer Varchar2; 
-- Örnek3 : Her ikiside Varchar2 wkare(Varchar2):=Varchar2;
DECLARE
 TYPE t_assoc_num IS TABLE OF PLS_INTEGER INDEX BY PLS_INTEGER;
 wkare t_assoc_num;
 j     number;
 TYPE t_assoc_str IS TABLE OF employees.last_name%TYPE INDEX BY BINARY_INTEGER;
 TYPE t_assoc_str2 IS TABLE OF jobs.job_title%type INDEX BY jobs.job_ıd%type;
 wlast_name t_assoc_str;
 wjobs t_assoc_str2;
BEGIN
FOR i IN 1..10 LOOP
wkare(i):=POWER(i,2);
END LOOP;
j:=wkare.FIRST;
/*WHILE j IS NOT NULL LOOP
dbms_output.put_line(j||'->Karesi= '||wkare(j));
j:=wkare.NEXT(j);
END LOOP;*/
j:=0;
FOR I IN (SELECT last_name FROM employees WHERE ROWNUM<=10) LOOP

j:=j+1;
wlast_name(j):= I.last_name;
dbms_output.put_lıne('wlast_name:('|| j || ') = '||wlast_name(j));
END LOOP;
FOR I IN(SELECT job_id,job_title FROM JOBS) LOOP
wjobs(I.job_id):=I.job_title;
dbms_output.put_lıne('wjobs:('|| I.job_id || ') = '||wjobs(I.job_id));
END LOOP;
END;