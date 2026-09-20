
--locations
select file_name from V$passwordfile_info;

-- users
select * from V$PWFILE_USERS;
--
select name,value,isses_modifiable,issys_modifiable from V$parameter
where name like 'remote_login%';
-- Password file günceleme
alter system set remote_login_passwordfile scope=spfile;