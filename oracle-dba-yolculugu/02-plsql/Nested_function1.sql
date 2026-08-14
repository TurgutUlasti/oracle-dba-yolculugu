--Nested Functions
-- Toplam Bulan Foksiyon

DECLARE
x number;
FUNCTION toplam(a IN NUMBER ,b IN NUMBER)
RETURN NUMBER IS
c number;
BEGIN
c:=a+b;
RETURN(c);
END;

BEGIN
x:=toplam(10,20);
dbms_output.put_line('Toplam= '||x);
END;