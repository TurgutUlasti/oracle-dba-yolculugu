-- Koşullu Akış Kontrolleri (If - Nestad - Case)

DECLARE
sayi1  number :=&sayi;
cikti  VARCHAR2(2000);

BEGIN
CASE  mod (sayi1,2)
when 1 then cikti:='Tek Sayı:'|| sayi1;
else cikti:='Çift Sayı:'|| sayi1;
END CASE;
dbms_output.put_lıne(cikti);
END;

DECLARE
sayi1  number :=&sayi;
cikti  VARCHAR2(2000);

BEGIN
CASE  
when mod (sayi1,2)=1 then cikti:='Tek Sayı:'|| sayi1;
else cikti:='Çift Sayı:'|| sayi1;
END CASE;
dbms_output.put_lıne(cikti);
END;
