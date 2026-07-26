-- İçinde bulunduğumuz günün ismini yazan program
-- Amaç: DECLARE / BEGIN / END anonim blok yapısını pekiştirmek

SET SERVEROUTPUT ON

-- Yöntem 1: TO_CHAR ile format string kullanarak gün ismini alma
DECLARE
    WGUN VARCHAR2(50);
BEGIN
    WGUN := TO_CHAR(SYSDATE, 'DAY');
    DBMS_OUTPUT.PUT_LINE('bugun ' || WGUN);
END;
/

-- Yöntem 2: Kendi fonksiyonumuzu tanımlayarak deneme (GET_DAY_NAME Oracle'da
-- hazır bir fonksiyon değildir; bu blok fonksiyon oluşturma alıştırması olarak
-- ileride tamamlanacak)
-- DECLARE
--     WGUN VARCHAR2(50);
-- BEGIN
--     WGUN := GET_DAY_NAME(SYSDATE);
--     DBMS_OUTPUT.PUT_LINE('bugun ' || WGUN);
-- END;
-- /
