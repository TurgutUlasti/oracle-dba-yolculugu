--CURSORS -Implicit Cursors - SQL%FOUND, SQL%NOTFOUND, SQL%ROWCOUNT
--CREATE TABLE employees2 as select * from employees;
DECLARE
req_emp  employees2%RowType;
BEGIN
UPDATE employees2 SET salary = salary * 1.20 where department_id=500;

IF SQL%FOUND THEN
DBMS_OUTPUT.put_line(sql%ROWCOUNT || ' Kayıt güncellendi 1');
else
DBMS_OUTPUT.put_line('Güncellencek Kayıt bulunamadı ! 1');

END IF;
IF SQL%NOTFOUND THEN
DBMS_OUTPUT.put_line('Güncellencek Kayıt bulunamadı ! 2');
else
DBMS_OUTPUT.put_line(sql%ROWCOUNT || ' Kayıt güncellendi 2');
END IF;

DELETE FROM employees2 where department_id IN (100,80);
IF SQL%ROWCOUNT<>0 THEN 
DBMS_OUTPUT.put_line('Silinecek Kayıt bulunamadı ! 1');

END IF;
IF SQL%FOUND THEN
DBMS_OUTPUT.put_line(sql%ROWCOUNT || ' Kayıt Silindi 1');
else
DBMS_OUTPUT.put_line('Silinecek Kayıt bulunamadı ! 1');

END IF;
IF SQL%NOTFOUND THEN
DBMS_OUTPUT.put_line('Silinecek Kayıt bulunamadı ! 2');
else
DBMS_OUTPUT.put_line(sql%ROWCOUNT || ' Kayıt Silindi 2');


END IF;

END;
