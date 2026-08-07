--Iterative Control Statments - For Loop
-- Nested Loop(İç İçe Loop)
-- Bölümler
-- Çalışanlar
DECLARE
yonetici  employees.last_name%TYPE;
BEGIN
for d IN (SELECT department_id,
department_name,manager_id FROM departments ORDER BY department_id) LOOP
BEGIN
SELECT last_name INTO yonetici FROM employees where employee_id=d.manager_id;
EXCEPTION WHEN no_data_found then
yonetici:=NULL;
END;

dbms_output.put_line(' ');
dbms_output.put_line('Bölüm No:' || d.department_id || ' Bölüm Adı:' 
||d.department_name||'  Yonetici: '|| yonetici);
FOR e IN (SELECT employee_id,First_name,Last_name FROM employees 
WHERE department_id=d.department_id) LOOP
dbms_output.put_line
('EMP_id :'||e.employee_id ||'      First_name: '||e.First_name ||'        Last_name : '||e.Last_name);
END LOOP;
END LOOP;

END;