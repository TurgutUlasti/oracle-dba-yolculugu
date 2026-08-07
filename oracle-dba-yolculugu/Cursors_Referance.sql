-- SYS_REFCURSOR (İmleçlerin Veri Tipi Olarak Kullanılması)

DECLARE
w_imlec     SYS_REFCURSOR;
w_query     VARCHAR2(1000);
w_eski_maas employees.salary%TYPE;
w_yeni_maas employees.salary%TYPE;

BEGIN
w_query:='SELECT salary,salary*1.30 FROM employees
WHERE department_id=100';
OPEN w_imlec FOR w_query;
LOOP
FETCH w_imlec INTO w_eski_maas,w_yeni_maas;
EXIT WHEN w_imlec%NOTFOUND;
dbms_output.put_lıne('Eski Maas:'||w_eski_maas||' Zamlı Maas:'||w_yeni_maas);
END LOOP;
CLOSE w_imlec;
END;