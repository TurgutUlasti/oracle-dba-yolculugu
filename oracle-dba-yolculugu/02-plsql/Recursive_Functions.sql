--Recursive Functions
--Faktöriel n!=1*2*3*4...n
CREATE OR REPLACE FUNCTION faktoriel (
    n INTEGER
) RETURN INTEGER IS
    fact INTEGER;
BEGIN
    IF n = 0 THEN
        fact := 1;
    ELSIF n = 1 THEN
        fact := 1;
    ELSIF n < 0 THEN
        fact := NULL;
    ELSE
        fact := n * faktoriel(n - 1);
    END IF;

    RETURN ( fact );
END;

SELECT faktoriel(5) fROM DUAL;