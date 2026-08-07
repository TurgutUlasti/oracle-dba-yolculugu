-- PL/SQL içinde SQL komularının Kullanımı (Static - DML- TCL - Savepoint -)
/*desc regions;
CREATE TABLE regions2 as 
select *from regions
where 1=2;

select *from regions2;
*/

DECLARE

BEGIN
INSERT INTO REGIONS2(region_id,region_name)
VALUES ('1','Avrupa');
SAVEPOINT A;
INSERT INTO REGIONS2(region_id,region_name)
VALUES ('2','Asya');
SAVEPOINT B;
UPDATE REGIONS2 SET regıon_name='Asia' WHERE regıon_ıd=2;
SAVEPOINT C;
DELETE FROM 
regions2 where region_id=2;
--ROLLBACK TO A;
--ROLLBACK TO B;
 --ROLLBACK TO C;
 ROLLBACK;
COMMIT;
END;

DELETE FROM REGIONS2;
COMMIT;