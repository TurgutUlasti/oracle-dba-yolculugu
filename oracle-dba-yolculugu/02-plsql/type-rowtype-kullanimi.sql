--%TYPE - %ROWTYPE
--Senaryo:department tablosundan,Departmens_ıd 10 kayıdı listeleyelim.

declare
--WDEPARTMENT_ID     NUMBER(4);    
--WDEPARTMENT_NAME   VARCHAR2(30); 
--WMANAGER_ID        NUMBER(6);    
--WLOCATION_ID       NUMBER(4);

/*WDEPARTMENT_ID     DEPARTMENTS.department_ıd%type;    
WDEPARTMENT_NAME   DEPARTMENTS.department_name%type; 
WMANAGER_ID        DEPARTMENTS.manager_ıd%type;    
WLOCATION_ID       DEPARTMENTS.locatıon_ıd%type;*/
r_dept DEPARTMENTS%ROWTYPE;
begın
/*SELECT * INTO  
 WDEPARTMENT_ID,WDEPARTMENT_NAME,WMANAGER_ID,WLOCATION_ID
 FROM DEPARTMENTS
 WHERE DEPARTMENT_ID = 10;
 DBMS_OUTPUT.PUT_LINE(WDEPARTMENT_ID||' '||WDEPARTMENT_NAME||' '||WMANAGER_ID||' '||WLOCATION_ID);
 */
 SELECT * INTO  r_dept
                 
 FROM DEPARTMENTS
 WHERE DEPARTMENT_ID = 20;
 DBMS_OUTPUT.PUT_LINE(
 r_dept.DEPARTMENT_ID||' '||
 r_dept.DEPARTMENT_NAME||' '||
 r_dept.MANAGER_ID||' '||
 r_dept.LOCATION_ID);
end;

