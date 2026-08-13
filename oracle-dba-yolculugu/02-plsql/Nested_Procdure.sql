--Nested Procdure
-- Örnek 1: Unnamed block içinde, çalışan ismini yazdıran bir Procedure yazalım
-- Örnek 2: Unnamed block içinde, çalışan ismini değiştiren bir Procedure yazalım.
-- Örnek 3: Parametreli Procedure.
DECLARE
CURSOR c_emp IS SELECT employee_id FROM employees
WHERE department_id=60;
r_emp c_emp%ROWTYPE;
v_name employees.last_name%TYPE;
PROCEDURE show_name(p_id IN employees.employee_id%TYPE) IS
--v_name employees.last_name%TYPE;
BEGIN
SELECT last_name INTO v_name FROM employees WHERE employee_id=p_id;
dbms_output.put_line('İsmi :'||v_name);
END;

PROCEDURE change_name(p_id IN employees.employee_id%TYPE) IS 
--v_name employees.last_name%TYPE;

BEGIN
UPDATE employees SET last_name = UPPER(last_name)
WHERE employee_id=p_id
RETURNING last_name INTO v_name;
dbms_output.put_line('YeniIsmi :'||v_name);
END change_name;
BEGIN--Main Block
OPEN c_emp;
LOOP
FETCH c_emp INTO r_emp;
EXIT WHEN c_emp%NOTFOUND;
show_name(r_emp.employee_id);
change_name(r_emp.employee_id);
END LOOP;
CLOSE c_emp;
--show_name(101);
--change_name(101);
END;

--ROLLBACK;