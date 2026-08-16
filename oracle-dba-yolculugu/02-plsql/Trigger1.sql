--DML TRIGGERS
--Örnek 1 : Mesai Saatleri dışında DML işlemleri yapmasın
CREATE OR REPLACE TRIGGER dml_departments BEFORE
    INSERT OR UPDATE OR DELETE ON departments
BEGIN
    dml_guvenlik_kontrol;
END;

CREATE OR REPLACE TRIGGER dml_jobs BEFORE
    INSERT OR UPDATE OR DELETE ON jobs
BEGIN
    dml_guvenlik_kontrol;
END;
--triggers silme kaptma açma 
DROP TRIGGER dml_jobs;

ALTER TRIGGER dml_jobs DISABLE;

ALTER TRIGGER dml_jobs ENABLE;
--dml_guvenlik_kontrol trirgger
CREATE OR REPLACE PROCEDURE dml_guvenlik_kontrol IS
BEGIN
    IF to_char(sysdate, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
       OR to_char(sysdate, 'DY') IN ( 'SAT', 'SUN', 'CMT', 'PAZ' ) THEN
        raise_application_error(-20205, 'Mesai Saatleri Dışında veri işleme yapılamaz !');
    END IF;
END;

--Code Test
DELETE FROM departments
WHERE
    department_id = 60;

UPDATE jobs
SET
    job_title = 'Programci'
WHERE
    job_id = 'IT_PROG';