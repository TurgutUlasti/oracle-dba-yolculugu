-- tablespaces query 
select * from dba_tablespaces;

desc dba_data_files;
select *from dba_data_files;

select *from dba_temp_files;
select * from V$log;

select * from v$logfile;

select * from dba_data_files;


-- Create Tablespace smallfile
create tablespace stok_TBS
    datafile'<path>\stok01.dbf' size 10M
    AUTOEXTEND ON NEXT 5M MAXSIZE 30M;
-- db_file show    
    show parameter db_file;

-- Create Tablespace BigFile
create bigfile tablespace SIPARIS_TBS1
    datafile 'siparis01.dbf' size 1G;

select tablespace_name  from dba_tablespaces;

select * from V$tablespace;

-- Tempory tablespace create
  create smallfile temporary tablespace temp2
    tempfile '<path>\temp02.dbf' size 25M
    AUTOEXTEND ON NEXT 5M MAXSIZE 50M;
-- undo tablespace create
 create smallfile undo tablespace undotbs2
    datafile'<path>\undotbs02.dbf' size 5M;
    
-- tablespaces query
select tablespace_name  from dba_tablespaces;
-- temp query
select file_name , tablespace_name from dba_temp_files;