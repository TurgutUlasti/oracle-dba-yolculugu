-- Koşullu Akış Kontrolleri (If - Nestad - Case)

DECLARE
    dogum_Tarihi date  := TO_DATE('12/07/2007','dd/mm/yyyy');
    yasi         number(3);
    cikti          varchar2(2000);
BEGIN

yasi:=(sysdate-dogum_tarihi)/365;
    Case
     WHEN  yasi<15 then
cikti:='Ben Bir Çocuğum !'|| yasi;

 WHEN  yasi<20 then
cikti:='Ben Bir Gençim !'|| yasi;
case  
WHEN yasi>18 THEN
cikti:='19 yaşındayım !' || yasi;
END CASE;
 WHEN  yasi<30 then
cikti:='Ben 20 lu yaşlardayım !'|| yasi;
 WHEN  yasi<40 then
cikti:='Ben 30 lu yaşlardayım !'|| yasi;
 WHEN  yasi<50 then
cikti:='Ben 40 lı yaşlardayım!'|| yasi;
else cikti:='Ben Çocuk değilim !'|| yasi;
    End CASE;
 dbms_output.put_lıne(cikti);
END;