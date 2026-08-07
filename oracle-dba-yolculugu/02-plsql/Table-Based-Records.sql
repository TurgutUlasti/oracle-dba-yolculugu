-- Record Data Type Table-Based-Records
-- Örnek1:En Yükses Maaş Alan kişinin ismini, Soyismini, Maaşını Yazdıralım
DECLARE
calisanlar employees%ROWTYPE;
BEGIN
SELECT * INTO calisanlar FROM EMPLOYEES WHERE SALARY =(SELECT MAX(SALARY) FROM EMPLOYEES);
dbms_output.put_line('İsmi : '|| calisanlar.first_name);
dbms_output.put_line('Soyismi : '|| calisanlar.last_name);
dbms_output.put_line('Maaaş : '|| calisanlar.salary);
END;