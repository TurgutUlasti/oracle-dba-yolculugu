-- Collection Data - Type Nested Tables
--Örnek:2 Personel İsimlerini Bir Dizide Tutacağız!
DECLARE
Cursor c_employees IS SELECT first_name,last_name From employees;
TYPE ndt_list IS TABLE OF employees.first_name%TYPE;
TYPE ndt_list IS TABLE OF c_employees%ROWTYPE;
name_list ndt_list := ndt_list();
counter INTEGER :=0;
BEGIN
FOR n IN c_employees LOOP
counter:=counter+1;
name_list.EXTEND;
name_list(counter).First_name:=n.First_name;
name_list(counter).Last_name:=n.Last_name;
dbms_output.put_line('Employees('||counter||'):'||name_list(counter).First_name||' '||
name_list(counter).last_name);
END LOOP;
END;
