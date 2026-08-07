--PL/SQL içinde DCL komutları kullanımı(Static  SQL -DDL - TCL)
--PL/SQL içinde DCL komutları kullanımı(Dynamic SQL -DDL - TCL)

DECLARE
ddl_komut varchar2(2000);
BEGIN
ddl_komut:='CREATE TABLE TEMP_TABLE (urun_id number(10),urun_adi varchar2(30))';
ddl_komut :='alter table temp_table add urun_fiyati number(15,2)';
ddl_komut:='grant select on temp_table to TURGUT';
ddl_komut :='revoke select on temp_table from TURGUT';
ddl_komut := 'drop table temp_table';
 EXECUTE IMMEDIATE ddl_komut;
DBMS_OUTPUT.PUT_LINE('TABLO OLUŞTURULDU');
DBMS_OUTPUT.PUT_LINE('TABLO Alter Edildi');
DBMS_OUTPUT.PUT_LINE('Yetki Verildi');
DBMS_OUTPUT.PUT_LINE('Yetki Alındı');
DBMS_OUTPUT.PUT_LINE('Tablo Silindi');

END;
/
DESC TEMP_TABLE;
--DROP TABLE TEMP_TABLE;
--COMMIT;
