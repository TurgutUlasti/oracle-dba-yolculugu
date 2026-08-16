CREATE TABLE logon_logoff_audit (
    user_name    VARCHAR2(30),
    sess_id      NUMBER(10),
    log_on_time  DATE,
    log_off_time DATE,
    hostname     VARCHAR2(20),
    ıp           VARCHAR2(15)
);

--Code Test
SELECT
    *
FROM
    logon_logoff_audit; 

--Triggers Create

CREATE OR REPLACE TRIGGER logon_audit_trg
    AFTER LOGON ON DATABASE BEGIN
        INSERT INTO logon_logoff_audit (
            user_name,
            sess_id,
            log_on_time,
            log_off_time,
            hostname,
            ıp
        ) VALUES ( user,
                   sys_context('userenv', 'sessionid'),
                   sysdate,
                   NULL,
                   sys_context('userenv', 'host'),
                   sys_context('userenv', 'IP_ADDRESS') );

    END;

CREATE OR REPLACE TRIGGER logoff_audit_trg
    BEFORE LOGOFF ON DATABASE BEGIN
        INSERT INTO logon_logoff_audit (
            user_name,
            sess_id,
            log_on_time,
            log_off_time,
            hostname,
            ıp
        ) VALUES ( user,
                   sys_context('userenv', 'sessionid'),
                   NULL,
                   sysdate,
                   sys_context('userenv', 'host'),
                   sys_context('userenv', 'IP_ADDRESS') );

    END;