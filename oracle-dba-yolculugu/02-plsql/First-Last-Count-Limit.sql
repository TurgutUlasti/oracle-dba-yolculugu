-- Collection Methots FIRST- LAST-COUNT-LIMIT

DECLARE
--TYPE varray_type IS VARRAY(10) OF NUMBER;
--TYPE ndt_type IS TABLE OF NUMBER;
  TYPE assoc_type IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
--varray1 varray_type:=varray_type(1,2,3,4,5,6);
--varray1 ndt_type := ndt_type(10,20,30,40,50,60);
  varray1 assoc_type;
  
PROCEDURE yaz IS 

BEGIN
dbms_output.put_line('Varray.Count:='||Varray1.Count);
dbms_output.put_line('Varray.Limit:='||Varray1.Limit);
dbms_output.put_line('Varray.First:='||Varray1.First);
dbms_output.put_line('Varray.Last:='||Varray1.Last);

END;
BEGIN
varray1(1):=10;varray1(2):=20;
varray1(3):=30;varray1(4):=40;
varray1(5):=50;varray1(6):=60;
dbms_output.put_line('Orjinal Değerler');
yaz;
--varray1.EXTEND(2,4);
varray1(7):=70;
dbms_output.new_line;
dbms_output.put_line('İşlem Sonrası');
yaz;

--varray1.TRIM(2);
varray1.DELETE(1);
dbms_output.new_line;
dbms_output.put_line('Trim Sonrası');
yaz;
END;
