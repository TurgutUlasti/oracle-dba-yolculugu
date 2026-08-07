--PL/SQL içinde DCL komutları kullanımı(Static  SQL -DDL - TCL)
--PL/SQL içinde DCL komutları kullanımı(Dynamic SQL -DDL - TCL)
--Pseudocolumns kullanımı (Cureval ,Nextval) (Sequence)

--desc regions;
create  sequence test_seq start WITH 5 INCREMENT BY 1;

DECLARE
seq_num number;
BEGIN 
seq_num:=test_seq.nextval;
INSERT INTO  regıons(regıon_ıd,regıon_name)
VALUES (seq_num,'Avustralya');
seq_num:=test_seq.nextval;
update regıons SET regıon_name='Antartika' 
where regıon_ıd=seq_num;
COMMIT;
END;
select * from regıons;
