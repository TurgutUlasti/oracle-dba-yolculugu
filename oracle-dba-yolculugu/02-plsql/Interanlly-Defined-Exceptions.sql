-- Interanlly Defined Exceptions - Pragma_Exceptio_init,Exception Scope,Others

DECLARE
/*my_exceptinos EXCEPTION;
PRAGMA exception_init(my_exceptinos,-2292); 

my_exceptinos2 EXCEPTION;
PRAGMA exception_init(my_exceptinos2,-00001); 
*/
BEGIN
INSERT INTO Regions values(12, 'Avustralya');
BEGIN
delete FROM Departments where department_id=90;
EXCEPTION WHEN OTHERS THEN
--EXCEPTION WHEN my_exceptinos THEN
dbms_output.put_line('Hata !'|| sqlcode||' '||sqlerrm);
END;
EXCEPTION WHEN OTHERS THEN
--EXCEPTION WHEN my_exceptinos2 THEN
dbms_output.put_line('Hata 2'|| sqlcode||' '||sqlerrm);
END;

--select * From REGIONS;