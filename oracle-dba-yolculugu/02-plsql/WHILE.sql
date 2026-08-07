--Iterative Control Statments - For Loop
-- Belirli  bir tarihin ve sonraki günlerin ismini ekrana yazalım
-- Örneğin 26/08/1071 hangi gün idi?
DECLARE
tarih1  date;
tarih2  DATE;
wbool   BOOLEAN;

BEGIN
tarih1:=TO_DATE('26/08/1071','DD/MM/YYYY');
tarih2 :=LAST_DAY(tarih1);
wbool:= tarih1<= tarih2;
WHILE wbool LOOP


dbms_output.put_lıne(TO_Char(tarih1,'day')||' '||To_CHAR(tarih1,'DD/MM/YYYY'));

tarih1:=tarih1+1;
wbool:=tarih1<= tarih2;
EXIT WHEN tarih1>TO_DATE('29/08/1071','DD/MM/YYYY');
END LOOP;
END;
