-- privilege(yetki Verme - Alma)

-- DBA privilege
desc dba_sys_privs

select distinct privilege from dba_sys_privs
ORDER BY PRIVILEGE;

GRANT CREATE ANY TABLE TO <user_name|role_name>;
GRANT CREATE VIEW TO <user_name|role_name>;

GRANT ALTER USER TO <user_name|role_name>;

REVOKE CREATE VIEW FROM <user_name|role_name>;

--Object Privilege

select *from user_tab_privs_made;

GRANT SELECT ON EMPLOYEES TO <user_name|role_name> WITH grant OPTION;

select * from user_tab_privs_recd;
revoke select on employees from <user_name|role_name>;

select * from user_tab_privs;