-- Predefined Exceptions
-- Örnek 

DECLARE
rec_emp employees%ROWTYPE;
val1   number(5); 
BEGIN
val1:=5000/0;
val1:=123456;
    SELECT * INTO rec_emp FROM EMPLOYEES; 
    --WHERE employee_id=1;
    dbms_output.put_line(rec_emp.employee_id||' '|| rec_emp.First_Name);
    EXCEPTION WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('1 nolu kayıt Yok '||sqlcode ||' '||sqlerrm);
    WHEN TOO_MANY_ROWS THEN
        dbms_output.put_line('Birden Fazla Kayıt Var ! '||sqlcode ||' '||sqlerrm);
        WHEN VALUE_ERROR THEN
        dbms_output.put_line('Yanlış Değer ! '||sqlcode ||' '||sqlerrm);
        WHEN ZERO_DIVIDE THEN
        dbms_output.put_line('Sıfırla Bölüme Yapılamaz ! '||sqlcode ||' '||sqlerrm);

END;