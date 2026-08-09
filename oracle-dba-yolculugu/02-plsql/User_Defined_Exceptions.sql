-- User-Defined Exceptions
-- Örnek: Bölüme göre çalışan personel aynısını bulan PL/SQL programı
--        (Bölüm No runtime esasında girilecektir)

DECLARE
    v_dept_id    employees.department_id%TYPE;
    v_toplam     number;
    e_invalid_id EXCEPTION;
BEGIN
v_dept_id :=&dept_id;
IF v_dept_id>0 THEN 
SELECT count(*) INTO v_toplam FROM EMPLOYEES WHERE department_id=v_dept_id;
dbms_output.put_line('Toplam := '|| v_toplam);
ELSE
RAISE e_invalid_id;
END IF;
EXCEPTION WHEN e_invalid_id THEN
dbms_output.put_line('Bölüm No Negatif Olamaz');

END;
