-- İmleçlerde Parametre Kullanımı (Cusors WIHT PARAMETERS)
-- Lokasyon (locations) --> Bölümler (departments) --> Çalışanlar (employees)

DECLARE
CURSOR c_loc IS SELECT location_id,city From locatıons ORDER BY city;
CURSOR c_dept(p_loc_id departments.location_id%TYPE)
IS SELECT department_id,department_name 
FROM departments
WHERE location_id=p_loc_id
ORDER BY department_name;
CURSOR c_emp(p_dept employees.department_id%TYPE) IS
SELECT employee_id,first_name ||' ' || last_name AS ad_soyad , hire_date,job_id
From Employees 
Where department_id=p_dept ORDER BY employee_id;
r_loc  c_loc%ROWTYPE;
r_dept c_dept%ROWTYPE;
r_emp  c_emp%ROWTYPE;
BEGIN 
OPEN c_loc;
loop 
FETCH c_loc INTO r_loc;
EXIT WHEN c_loc%NOTFOUND;
dbms_output.new_line;
dbms_output.put_line
('Lokasyon : ' || r_loc.City
||'('||r_loc.location_id||')');
OPEN c_dept(r_loc.location_id);
LOOP
FETCH c_dept INTO r_dept;
EXIT WHEN c_dept%NOTFOUND;
dbms_output.new_line;
dbms_output.put_line
('      '|| r_dept.department_name||'('||r_dept.department_id||')');
OPEN c_emp(r_dept.department_id);
LOOP
FETCH c_emp INTO r_emp;
EXIT WHEN c_emp%NOTFOUND;
dbms_output.new_line;
dbms_output.put_line('     '|| r_emp.ad_soyad || '('||r_emp.employee_id||' - ' ||r_emp.job_id 
|| '-'||TO_CHAR(r_emp.hire_date,'dd/mm/yyyy') || ')' );
END LOOP;
CLOSE c_emp;
END LOOP;
CLOSE c_dept;
END loop;

CLOSE c_loc;
END;
