-- Koşullu Akış Kontrolleri (If - Nestad)

DECLARE
    dogum_Tarihi date  := TO_DATE('12/10/2007','dd/mm/yyyy');
    yasi         number(3);
BEGIN

yasi:=(sysdate-dogum_tarihi)/365;

IF yasi<15 then
dbms_output.put_line('Ben Bir Çocuğum !'|| yasi);
ELSIF  yasi<20 then
dbms_output.put_line('Ben Bir Gençim !'|| yasi);
IF yasi>18 then
dbms_output.put_line('Ben 19 yaşındayım !'|| yasi);
End IF;
ELSIF  yasi<30 then
dbms_output.put_line('Ben 20 li yaşlardayım !'|| yasi);
ELSIF  yasi<40 then
dbms_output.put_line('Ben 30 lu yaşlardayım !'|| yasi);
ELSIF  yasi<50 then
dbms_output.put_line('Ben 40 lı yaşlardayım !'|| yasi);
Else
dbms_output.put_line('Ben Bir Çocuk Değilim !'|| yasi);

 end IF;
END;