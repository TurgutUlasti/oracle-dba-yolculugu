-- Record Data Type Cursor-Based-Records
-- Örnek1:Ortalama maaştan daha düşük maaş alanları inceleyelim 
DECLARE
CURSOR c_oku ıs SELECT employee_id,first_name,last_name,salary  FROM employees
WHERE salary<(SELECT AVG(salary) FROM employees);
calisan c_oku%rowtype;
BEGIN
SELECT AVG(salary) INTO calisan.salary FROM employees;
dbms_output.put_line('Ortalama Maas : '||calisan.salary);
OPEN c_oku;
LOOP
FETCH c_oku INTO calisan;
EXIT WHEN c_oku%NOTFOUND;
dbms_output.put('Calisan'||calisan.employee_id||' '||calisan.first_name||' '||calisan.salary);
dbms_output.new_line;
END LOOP;
CLOSE c_oku;
END;