-- memnory parametreleri gösterme
show parameter target
--memory parameteleri sorgu 
select name,value,issys_modifiable,isses_modifiable,description from v$parameter
where name like '%target';

-- Maximum Pga alocated sorgu
select name, TO_char(value) from V$PGASTAT Where name like '%maxi%';

-- memoryden spfile oluştrma yedek alma
create spfile='/u01/app/oracle/product/19.0.0/dbhome_1/dbs/yedekler/spfileORCL_ASMM.ora' from memory;

-- Memory_ target 
 select (sga.value + greatest(pga.value,max_pga.value)) /(1024*1024) AS Memory_Target
        from
    (Select To_number(value) as value from v$parameter where name = 'sga_target')SGA,
    (Select To_number(value) as value from V$parameter where name ='pga_aggregate_target') PGA,
    (select value from V$pgastat where name ='maximum PGA allocated') max_pga;

-- Automatic Shared Memory Managament TO-> Automatic Memory Managment 
alter system set memory_target=<X>M scope=spfile;
alter system set memory_max_target=<X>M scope=spfile;
alter system set sga_target=0 scope=spfile;
alter system set pga_aggregate_target=0;

--next

shutdown immedate;
startup;

