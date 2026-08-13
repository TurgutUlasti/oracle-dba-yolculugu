--Blob Procedure
CREATE OR REPLACE PROCEDURE file_to_blob

( p_dir     IN    VARCHAR2,
  p_dosya_Ismi IN VARCHAR2
)
IS
w_foto2               bfıle;
w_tempdata            blob;
w_KaynakOffset        PLS_INTEGER:=1;
w_hedefOffset         PLS_INTEGER:=1;
BEGIN
dbms_lob.CreateTemporary(w_tempdata,true);
w_foto2   :=BFilename(p_dir,p_dosya_Ismi);
dbms_lob.FileOpen(w_foto2, dbms_lob.FILE_READONLY);
dbms_lob.LoadFromFile(w_tempdata,w_foto2,dbms_lob.LOBMAXSIZE,w_hedefOffset,w_KaynakOffset);

INSERT INTO FOTO(dosyaAdi,resim) values(p_dosya_Ismi,w_tempdata);
commit;

dbms_lob.FileClose(w_foto2);
END;
/

--Select * From Foto;

EXECUTE file_to_blob('IMAGE_DIR','rb_9041.png');

EXECUTE file_to_blob('IMAGE_DIR','rb_35017.png');
