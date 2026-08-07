-- Collection Methots Prior NEXT

DECLARE
TYPE arr_type IS VARRAY(10) OF NUMBER;
v_sayi arr_type:=arr_type();

BEGIN
v_sayi.EXTEND(4);
v_sayi(1):=10;
v_sayi(2):=20;
v_sayi(3):=30;
v_sayi(4):=40;
dbms_output.put_line('v_sayi.PRIOR(3)='||v_sayi.PRIOR(3));
dbms_output.put_line('v_sayi.NEXT(3)='||v_sayi.NEXT(3));

dbms_output.put_line('v_sayi.PRIOR(6)='||v_sayi.PRIOR(6));
dbms_output.put_line('v_sayi.NEXT(6)='||v_sayi.NEXT(6));

dbms_output.put_line('v_sayi.PRIOR(v_sayi.FIRST)='||v_sayi.PRIOR(v_sayi.FIRST));
dbms_output.put_line('v_sayi.NEXT(v_sayi.LAST))='||v_sayi.NEXT(v_sayi.LAST));

END;
