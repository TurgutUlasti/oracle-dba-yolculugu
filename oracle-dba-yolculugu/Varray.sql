-- Collection Data Type - Varray
--Örnek1: Futbol Takımlarının İsimlerini ve sıralamalarını bir dizide tutalım

DECLARE
TYPE takimlar IS VARRAY(10) OF VARCHAR2(30); 
takim takimlar:=takimlar('FB','GS','BJK','TS');
BEGIN
dbms_output.put_line('2001');
dbms_output.put_line('---');

FOR i IN 1..takim.count LOOP
dbms_output.put_line(i ||'.'|| takim(i));
END LOOP;
takim.EXTEND;
takim(5):='Ankaragucu';
takim(3):='SivasSpor';
takim(4):='DemirSpor';
dbms_output.new_line();
dbms_output.put_line('2002');
dbms_output.put_line('---');

FOR i IN 1..takim.count LOOP
dbms_output.put_line(i ||'.'|| takim(i));
END LOOP;
takim:=takimlar('GençlerBirliği','IstanbulSpor','BJK','Cimbom');
dbms_output.new_line();
dbms_output.put_line('2003');
dbms_output.put_line('---');

FOR i IN 1..takim.count LOOP
dbms_output.put_line(i ||'.'|| takim(i));
END LOOP;
END;
