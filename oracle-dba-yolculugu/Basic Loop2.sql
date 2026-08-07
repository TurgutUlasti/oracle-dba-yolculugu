-- Itarative Control Statements - Basic Loop
-- Kurslar Tablosuna 3 adet kayıt gireceğiz

/*Create Table KURSLAR(
kurs_id number(3),
kurs_adi varchar2(50),
egitmen  varchar2(50),
baslangic_tarihi date,
bitis_tarihi date
);*/


DECLARE
rec_kurs  KURSLAR%ROWTYPE;
BEGIN

rec_kurs.egitmen:='Turgut ULAŞTI';
rec_kurs.baslangic_tarihi :=trunc(sysdate);
rec_kurs.bitis_tarihi :=rec_kurs.baslangic_tarihi+4;

loop
rec_kurs.kurs_id:=nvl(rec_kurs.kurs_id ,0)+1;

IF rec_kurs.kurs_id = 2 then CONTINUE; END IF;

--EXIT when rec_kurs.kurs_id=4;

IF rec_kurs.kurs_id=4 then EXIT; END IF;
/*Select DECODE(rec_kurs.kurs_id,1,'Oracle SQL',2,'PL/SQL',3,'Oracle DBA')
INTO rec_kurs.kurs_adi FROM DUAL;*/
CASE rec_kurs.kurs_id
WHEN 1 THEN rec_kurs.kurs_adi:='Oracle SQL';
WHEN 2 THEN rec_kurs.kurs_adi:='PL/SQL';
WHEN 3 THEN rec_kurs.kurs_adi:='Oracle DBA';
END CASE;

INSERT INTO kurslar(kurs_ıd,kurs_adi,egitmen
,baslangic_tarihi,bitis_tarihi)
Values(rec_kurs.kurs_id,rec_kurs.kurs_adi,rec_kurs.egitmen,rec_kurs.baslangic_tarihi,rec_kurs.bitis_tarihi);
rec_kurs.baslangic_tarihi := rec_kurs.bitis_tarihi+1;

rec_kurs.bitis_tarihi := rec_kurs.baslangic_tarihi+4;
end loop;
COMMIT;
END;

--select * FROM KURSLAR;

--delete from kurslar;
--commıt;