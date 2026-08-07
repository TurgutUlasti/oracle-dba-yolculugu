-- Collection Data - Type Nested Tables
--Örnek:1 Öğrenci Ve Sınav Puanını Bir Dizide Tutacağız
DECLARE
TYPE ndt_isimler IS Table OF VARCHAR2(10);
TYPE ndt_puanlar IS TABLE OF INTEGER;
isimler ndt_isimler;
puanlar ndt_puanlar;
BEGIN
isimler:=ndt_isimler('Turgut','Ahmet','Ayşe','Fatma','Oğuz');
puanlar:=ndt_puanlar(98,97,78,87,92);
dbms_output.put_lıne('Toplam Öğrenci Sayısı :'||isimler.count);
For I IN 1..isimler.count LOOP
dbms_output.put_lıne('Öğrenci:'||isimler(I)||' Puan:'||puanlar(I));
END LOOP;
END;