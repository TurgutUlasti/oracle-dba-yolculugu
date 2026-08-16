--DML TRIGGERS
--Örnek 2: Log Triggers (Audit)
CREATE TABLE regıons_log (
    region_id   NUMBER,
    region_name VARCHAR2(25),
    kim         VARCHAR2(30),
    nezaman     DATE,
    neyapti     VARCHAR2(10)
);
--Code Test
SELECT
    *
FROM
    regions_log;

SELECT
    *
FROM
    regions;

desc regions;

INSERT INTO regions VALUES ( 11,
                             'Turkiye' );

commit;

UPDATE regions
SET
    region_name = 'Avustralya'
WHERE
    region_id = 11;

DELETE FROM regions
WHERE
    region_id = 11;

commit;
-- Trigger 
CREATE OR REPLACE TRIGGER region_audit_trg AFTER
    INSERT OR UPDATE OR DELETE ON regions
    FOR EACH ROW
DECLARE
    w_islem VARCHAR2(10);
BEGIN
    w_islem :=
        CASE
            WHEN ınsertıng THEN
                'INSERT'
            WHEN updatıng THEN
                'UPDATE'
            WHEN deletıng THEN
                'DELETE'
        END;
    IF ınsertıng THEN
        INSERT INTO regions_log (
            region_id,
            region_name,
            kim,
            nezaman,
            neyapti
        ) VALUES ( :new.region_id,
                   :new.region_name,
                   user,
                   sysdate,
                   w_islem );

    END IF;

    IF updatıng THEN
        INSERT INTO regions_log (
            region_id,
            region_name,
            kim,
            nezaman,
            neyapti
        ) VALUES ( :old.region_id,
                   :old.region_name,
                   user,
                   sysdate,
                   w_islem || 'Old' );

        INSERT INTO regions_log (
            region_id,
            region_name,
            kim,
            nezaman,
            neyapti
        ) VALUES ( nvl(:new.region_id,
                       :old.region_id),
                   nvl(:new.region_name,
                       :old.region_name),
                   user,
                   sysdate,
                   w_islem || 'New' );

    END IF;

    IF deletıng THEN
        INSERT INTO regions_log (
            region_id,
            region_name,
            kim,
            nezaman,
            neyapti
        ) VALUES ( :old.region_id,
                   :old.region_name,
                   user,
                   sysdate,
                   w_islem );

    END IF;

END;