-- Collection Methots TRIM

DECLARE
TYPE varr_type IS VARRAY(10) OF INTEGER;
var1 varr_type:=varr_type(10,21,9,4,55,68);
BEGIN
dbms_output.new_line;
dbms_output.put_line('Orjinal Değerler ----');
FOR i IN 1..var1.count LOOP
dbms_output.put_line('var1 ('||i ||')='||var1(i));
END LOOP;
var1.TRIM;
dbms_output.new_line;
dbms_output.put_line('Trim Kullanıldı ----');
FOR i IN 1..var1.count LOOP
dbms_output.put_line('var1 ('||i ||')='||var1(i));
END LOOP;
var1.TRIM(2);
dbms_output.new_line;
dbms_output.put_line('Trim(2) Kullanıldı ----');
FOR i IN 1..var1.count LOOP
dbms_output.put_line('var1 ('||i ||')='||var1(i));
END LOOP;
var1.DELETE;
dbms_output.new_line;
dbms_output.put_line('DELETE Kullanıldı ----');
FOR i IN 1..6 LOOP
IF var1.EXISTS(i) THEN
dbms_output.put_line('var1 ('||i ||')='||var1(i));
ELSE
dbms_output.put_line('var1 ('||i ||')= Tanımsız');
END IF;
END LOOP;
END;