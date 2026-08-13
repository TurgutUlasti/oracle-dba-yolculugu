-- Storde Procedures -- 
--Örnek1: Merhaba Dünya!

CREATE OR REPLACE PROCEDURE merhaba_Dunya
IS

BEGIN

dbms_output.put_line('Merhaba Dünya !');
END;


DECLARE 

BEGIN
merhaba_dunya;
END;