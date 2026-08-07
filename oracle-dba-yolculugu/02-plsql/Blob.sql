-- Blob Uygulamsı (File sistemden veritabanına resim aktran PL/SQL uygulamsı)
-- C:\Users\Turgut\Desktop\DBA-Notlarim\PL-SQL_Oracle Notlarim\resimli-notlarım

create table foto(
        dosyaAdi varchar2(100)  PRIMARY key,
        resim    blob);
        
DECLARE    
foto2               bfıle;
tempdata            blob;
KaynakOffset        PLS_INTEGER:=1;
hedefOffset         PLS_INTEGER:=1;
dosyaIsmi           varchar2(30):='rb_35017.png';
BEGIN 
dbms_lob.CreateTemporary(tempdata,true);
foto2   :=BFılename('IMAGE_DIR',dosyaIsmi);
dbms_lob.FileOpen(foto2, dbms_lob.FILE_READONLY);
dbms_lob.LoadFromFıle(tempdata,foto2,dbms_lob.LOBMAXSIZE,hedefOffset,KaynakOffset);

INSERT INTO FOTO(dosyaAdi,resim) values(dosyaIsmi,tempdata);
commıt;

dbms_lob.FıleClose(foto2);
END;

--Select *From FOTO;
