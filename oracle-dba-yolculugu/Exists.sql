-- Collection Methots EXISTS

DECLARE
TYPE ndt_type  IS TABLE OF CHAR(1);
var1 ndt_type:= ndt_type('P','L','/','S','Q','L');
BEGIN
FOR i IN 1..6 LOOP
IF var1.EXISTS(i) THEN 
dbms_output.put_line('var1('||i||')='||var1(i));
ELSE
dbms_output.put_line('var1('||i||')=Elaman Yok');

END IF;
END LOOP;
var1.DELETE(3);
dbms_output.new_line;
FOR i IN 1..6 LOOP
IF var1.EXISTS(i) THEN 
dbms_output.put_line('var1('||i||')='||var1(i));
ELSE
dbms_output.put_line('var1('||i||')=Elaman Yok');
END IF;
END LOOP;
END;