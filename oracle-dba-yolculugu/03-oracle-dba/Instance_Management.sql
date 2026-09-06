
--pflie konmunu gösterme
show parameter spfile;

-- pfile'dan spfile üretme 
create spfile from pfile;

--Backup alma
create spfile='/home/oracle/ora_yedek/spfileTEST.ora' from pfile;
create pfile='/home/oracle/ora_yedek/initTEST.ora' from spfile;

--linuxta binary dosya açma komutu 
strings spfileORCL.ora 

-- database kaç tane paramatere sorgulama
Select Count(*) From V$Parameter;
---------------
select name,description from  V$parameter;
-------------------------------------------------------
select name,description from  V$parameter where name like 'proces%';
-------------------------------------------------------------------
select name, value, issys_modifiable from V$parameter order by name;

-- datafile sorgulama

select tablespace_name, file_name , bytes/(1024*1024) MB from  DBA_DATA_FILES;

select name,bytes/(1024*1024) MB from V$DATAFILE;
-- datafile resize 
alter database DATAFILE 'Full_Path' RESIZE 75M;

-- procsses sorgulma
show parameter process;
--Procsses resize komutu 
 alter system set processes=1900 scope=spfile;
 
 -- max_idle_time parameteresi 
 Show parameter max_idle_time;
--bağlatıları Inative durumda kill eder
ALTER SYSTEM SET MAX_IDLE_TIME=10 SCOPE=Both;


