-- Itarative Control Statements - Basic Loop
set SERVEROUTPUT off;
DECLARE 
sayac  BINARY_INTEGER;
BEGIN
LOOP
sayac:=nvl(sayac, 0)+1;
/*IF mod(sayac,2)=0 then 
CONTINUE;
END IF;*/
CONTINUE WHEN mod(sayac,2)=0;
dbms_output.put_lıne('Sayac = ' || sayac);
/*IF sayac =5 then
EXIT;
End IF;*/
EXIT when sayac=5;
end LOOP;
END;
