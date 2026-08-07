-- Record Data Type Developer-Defined-Records + Nested Records
-- Örnek2: Rehber Uygulması

DECLARE
TYPE r_kisi IS RECORD(
ad    employees.first_name%TYPE,
soyad employees.last_name%TYPE
);
TYPE contact IS RECORD(
kisi r_kisi, -- Nested Record
telefon employees.phone_number%TYPE
);
TYPE dizi IS TABLE OF contact;--Nested Table Data Types
rehber dizi:=dizi();
j number:=0;
BEGIN
FOR i IN (SELECT first_name,last_name,phone_number FROM employees ) LOOP
j:=j+1;
rehber.EXTEND;
rehber(j).kisi.ad      :=i.first_name;
rehber(j).kisi.soyad   :=i.last_name;
rehber(j).telefon :=i.phone_number;

END LOOP;
j:=rehber.FIRST;
WHILE j IS NOT NULL LOOP
dbms_output.put_line('Adı : '||rehber(j).kisi.ad||
                     ' Soyad:'||rehber(j).kisi.soyad||
                     ' Telefon :'||rehber(j).telefon);
                     j:=rehber.NEXT(j);
END LOOP;
END;
