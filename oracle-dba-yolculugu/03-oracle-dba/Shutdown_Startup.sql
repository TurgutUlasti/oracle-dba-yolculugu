-- remote_login_pass
show parameter remote_login_pass
-- Sysdba,sysoper yetkileri sorgulama
select username,sysdba,sysoper,sysbackup from v$pwfile_users;

-- Yetki Verme Kodu 
GRANT SYSDBA TO HR;

-- Yetki Alma Kodu 
REVOKE SYSDBA FROM HR;

-- DBA yetkileri sorgulama
select * From DBA_ROLE_PRIVS;


-- DBA Role sorgulama 
select * from DBA_ROLES;

-- DBA Rolüne Kimler Sahip sorgulama
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTED_ROLE = 'DBA';

-- SGA ismi ve durumu sorgulama
SELECT INSTANCE_NAME, STATUS FROM V$INSTANCE;

--Database ismi ve hangi modda sorgulama (Nomount modda çalışmaz)
SELECT NAME,OPEN_MODE FROM V$DATABASE;

-- Data Dosya nerede olduğunu sorgulama
select name from V$datafile;

-- Restricted moda alma komutu
ALTER SYSTEM ENABLE  RESTRICTED SESSION;

-- Restricted moddan çıkma komutu
ALTER SYSTEM DISABLE RESTRICTED SESSION;

-- Restricted yetki verme
GRANT RESTRICTED SESSION TO HR;

-- Restricted yetki alma
revoke RESTRICTED SESSION from HR;

--log ve logfile dosyalarını sorgulama
SELECT a.member,a.status,b.bytes FROM   V$LOGFILE A, V$LOG B WHERE A.group# = B.group#;
select name, open_mode , log_mode from V$database;

--Archivelog modda alma komutu (mount modundan sonra bu şekilde yapılır !!!)
ALTER DATABASE ARCHIVELOG;
--Archivelog modda çıkarma komutu (mount modundan sonra bu şekilde yapılır !!!)
ALTER DATABASE NOARCHIVELOG;

--archivelog  dosyaları formatı sorgulama
show parameter log_archive_format;

-- =>>> Abort modu  kod sıralaması 
-- 1=> Buffer Cache Boşaltma 
ALTER SYSTEM SWITCH LOGFILE;
ALTER SYSTEM CHECKPOINT;

-- 2=> ABORT Moda Alma (Kill Users)
Shutdown abort;

-- 3=> startup restrict (kısıtlı moda alma)
STARTUP RESTRICT;

-- 4=> SHUTDOWN IMMEDIATE (Kill Processes)
SHUTDOWN IMMEDIATE;
------------------------------------------

