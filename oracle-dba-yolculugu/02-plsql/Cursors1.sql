--CURSORS -Implicit Cursors - SQL%FOUND, SQL%NOTFOUND, SQL%ROWCOUNT
--CREATE TABLE employees2 as select * from employees;
DECLARE
req_emp  employees2%RowType;
BEGIN
SELECT * INTO req_emp FROM employees2 where employee_id=100;

IF SQL%FOUND THEN
DBMS_OUTPUT.put_lıne('Kayıt Var !'||sql%ROWCOUNT);
else
DBMS_OUTPUT.put_lıne('Kayıt Yok !');

END IF;
IF SQL%NOTFOUND THEN
DBMS_OUTPUT.put_lıne('Kayıt Yok 1 !');
else
DBMS_OUTPUT.put_lıne('Kayıt var 1 !'||sql%ROWCOUNT);

END IF;
EXCEPTION WHEN no_data_found then
DBMS_OUTPUT.put_lıne('Kayıt Yok 2 !');
END;
