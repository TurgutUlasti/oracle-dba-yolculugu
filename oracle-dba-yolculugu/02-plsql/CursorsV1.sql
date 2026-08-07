-- Cursors - Explicit Cursors - Developer-Defined Cursors
-- Cursors - Durum Bilgileri %ISOpen %NotFound %Found %RowCount
-- Cursors and Records(Refarance Data Type %ROWTYPE)
-- Cursors For Loop
DECLARE
CURSOR c_emp IS SELECT * From EMPLOYEES Order BY employee_id;

--wemployee_id  EMPLOYEES.employee_Id%TYPE;
--wlast_name    EMPLOYEES.last_name%TYPE;
r_oku c_emp%ROWTYPE;
BEGIN
IF NOT c_emp%ISOPEN THEN
   Open c_emp;
END IF;
   
    LOOP 
    --FETCH c_emp INTO wemployee_id ,wlast_name;
        FETCH c_emp INTO r_oku;

    EXIT WHEN NOT c_emp%FOUND ;
    --OR c_emp%ROWCOUNT >10 ;
    --dbms_output.put_lıne('Sıra No:'|| c_emp%RowCount||' Sicil No : '|| wemployee_id || ' Soyİsmi: ' || wlast_name);
        dbms_output.put_lıne('Sıra No:'|| c_emp%RowCount||' Sicil No : '|| r_oku.employee_id || ' Soyİsmi: ' || r_oku.last_name
        ||' İlk Adı: '|| r_oku.first_name);

    END LOOP;
    IF  c_emp%ISOPEN THEN
    CLOSE c_emp;
    End IF;
END;
