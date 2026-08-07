-- Collection Methots Delete

DECLARE
TYPE ndt_sayilar IS TABLE OF INTEGER;
dizi ndt_sayilar:=ndt_sayilar(10,21,23,49,60,63);

BEGIN

dbms_output.new_line;
dbms_output.put_line('Orjinal ---');
FOR i IN 1..dizi.count LOOP
dbms_output.put_line('dizi ('|| i || ')='|| dizi(i));
END LOOP;
dizi.DELETE(2);
dbms_output.new_line;
dbms_output.put_line('İkinci Eleman Silindi ---');
FOR i IN 1..dizi.count LOOP
IF dizi.EXISTS(i) THEN
dbms_output.put_line('dizi ('|| i || ')='|| dizi(i));
ELSE
dbms_output.put_line('dizi ('|| i || ')= YOK');
END IF;
END LOOP;
dizi(2):=9999;
dbms_output.new_line;
dbms_output.put_line('İkinci Eleman Eklendi ---');
FOR i IN 1..dizi.count LOOP
IF dizi.EXISTS(i) THEN
dbms_output.put_line('dizi ('|| i || ')='|| dizi(i));
ELSE
dbms_output.put_line('dizi ('|| i || ')= YOK');
END IF;
END LOOP;
dizi.DELETE(2,4);
dbms_output.new_line;
dbms_output.put_line('2,3,4 Elemanlar Silindi ---');
FOR i IN 1..dizi.count LOOP
IF dizi.EXISTS(i) THEN
dbms_output.put_line('dizi ('|| i || ')='|| dizi(i));
ELSE
dbms_output.put_line('dizi ('|| i || ')= YOK');
END IF;
END LOOP;
dizi.delete;
dbms_output.new_line;
dbms_output.put_line('Tüm Elemanlar Silindi ---');
FOR i IN 1..dizi.count LOOP
IF dizi.EXISTS(i) THEN
dbms_output.put_line('dizi ('|| i || ')='|| dizi(i));
ELSE
dbms_output.put_line('dizi ('|| i || ')= YOK');
END IF;
END LOOP;
END;