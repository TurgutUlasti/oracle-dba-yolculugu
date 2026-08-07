-- Cursors - For Update ve Where Current Of Kullanımı
-- Maaşı 5000 ' den az olanlara %20 zam yapalım.


DECLARE 
    CURSOR c_emp IS Select * From employees2 
    FOR UPDATE OF Salary;
BEGIN

For r_emp IN c_emp LOOP

IF r_emp.salary<5000 THEN 
dbms_output.put_lıne(r_emp.employee_id||' Update Edildi');
UPDATE employees2 SET 
            salary=salary*1.2
    --where employee_id = r_emp.employee_id;
    Where CURRENT OF c_emp;
        END IF;
END LOOP;
Commıt;
END;

