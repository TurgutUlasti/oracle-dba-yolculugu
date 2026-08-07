DECLARE
--CURSOR c_emp IS SELECT * From EMPLOYEES Order BY employee_id;
i number :=0;
BEGIN

FOR r_oku IN (SELECT * From EMPLOYEES Order BY employee_id) LOOP
i:=i+1;
dbms_output.put_lıne('Sıra No:'|| i||
' Sicil No : '|| r_oku.employee_id||
' Soyİsmi: ' || r_oku.last_name||
' İlk Adı: '|| r_oku.first_name);
END LOOP;
END;