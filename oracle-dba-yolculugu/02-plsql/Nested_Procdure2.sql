--Nested Procdure
-- Örnek:4 Parametreli Procedures(IN-OUT-INOUT);
-- Örnek:5 Parametre Gönderme Yöntemleri
-- Pozisyon Notasyonu, İsim Notasyonu, Karışık Notasyon
DECLARE
w_maas employees.salary%TYPE;
w_maas_zamli employees.salary%TYPE:=1.25;
PROCEDURE get_info(
    p_id     IN employees.employee_id%TYPE,
    p_salary OUT employees.salary%TYPE,
    p_new_salary IN OUT employees.salary%TYPE
    )IS
    
BEGIN
SELECT salary INTO p_salary FROM employees WHERE employee_id=p_id;
p_new_salary:=p_new_salary*p_salary;
END;
BEGIN
fOR i IN(SELECT employee_id FROM employees) LOOP
--get_info(i.employee_id,w_maas,w_maas_zamli);
--get_info(p_id=>i.employee_id,p_salary=>w_maas,p_new_salary=>w_maas_zamli);
get_info(i.employee_id,w_maas,p_new_salary=>w_maas_zamli);


dbms_output.put_line('Sicil No: '||i.employee_id||' Mevcut Maas: '||w_maas || ' Zamnli Maas:'||w_maas_zamli);
w_maas_zamli:=1.25;
END LOOP;

END;