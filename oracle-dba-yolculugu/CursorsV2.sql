DECLARE
CURSOR c_emp IS SELECT * From EMPLOYEES Order BY employee_id;

BEGIN

FOR r_oku IN c_emp LOOP
dbms_output.put_lıne('Sıra No:'|| c_emp%RowCount||
' Sicil No : '|| r_oku.employee_id||
' Soyİsmi: ' || r_oku.last_name||
' İlk Adı: '|| r_oku.first_name);
END LOOP;
END;