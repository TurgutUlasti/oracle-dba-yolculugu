-- dba_data_files dosya kontrol
desc dba_data_files;

-- file_name,tablespace_name sorgu
select file_name, tablespace_name from dba_data_files;


-- linux kodları 
cd <path>
 ls -ltr *dbf

--datafile hesaplama kodu
Select Substr(df.tablespace_name,1,20) "Tablespace Name",
Substr(df.file_name,1,80) "File Name",
Round(df.bytes/1024/1024,0) "Size (M)",
decode(e.used_bytes,NULL,0,Round(e.used_bytes/1024/1024,0)) "Used (M)",
decode(s.free_bytes,NULL,0,Round(s.free_bytes/1024/1024,0)) "Free (M)",
decode(e.used_bytes,NULL,0,Round(e.used_bytes/df.bytes)*100.0))"% Used"
from dba_data_files DF,
(Select file_id,
sum(bytes) used_bytes
from dba_extents
Group By file_id) E,
(Select sum(bytes) free_bytes,
file_id from dba_free_space
Group By file_id)s
Where e.file_id (+) = df.file_id
and df.file_id = s.file_id(+)
order by df.tablespace_name,
df.file_name;

-- Sga Bileşenleri
DESC V$SGAINFO;

select name,bytes/(1024*1024) from V$SGAINFO;
----------------------------------------------
 DESC V$sga_dynamic_components;

 select component,current_size from v$sga_dynamic_components;
 
 -- hangi modda 
 select name , open_mode,force_full_db_caching from V$database;
-- caching moda alma
shutdown immediate
startup mount 
alter database force full database caching;
alter database open;
-- caching moddan çıkarma 
shutdown immediate
startup mount 
alter database no force full database caching;
alter database open;