-- Itarative Control Statements - FOR Loop


--set SERVEROUTPUT on;
BEGIN
    FOR sayac IN  1..5 LOOP
    EXIT  WHEN sayac=3;
    CONTINUE WHEN sayac=3;
    IF  sayac= 3 THEN
    EXIT;
    --CONTINUE;
    END IF;
        dbms_output.put_lıne('Sayac :'|| sayac);
    END LOOP;
END;

DECLARE 
faktoriyel number :=1;
BEGIN
for sayac IN 1..10 LOOP
faktoriyel:=faktoriyel*sayac; 
END LOOP;
  dbms_output.put_lıne('10!='|| faktoriyel);

END;
