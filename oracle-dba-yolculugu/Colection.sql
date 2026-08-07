--Composıte(collection) Data Type (Record Type Örneği)
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
--r_dept DEPARTMENTS%ROWTYPE;

    Type t_dept IS RECORD(
    dept_id number(4),
    dept_name departments.department_name%type,
    manager_ıd departments.manager_id%type NOT NULL DEFAULT 0
    );
    r_dept2  t_dept;
begın
/*SELECT * INTO  
 WDEPARTMENT_ID,WDEPARTMENT_NAME,WMANAGER_ID,WLOCATION_ID
 FROM DEPARTMENTS
 WHERE DEPARTMENT_ID = 10;
 DBMS_OUTPUT.PUT_LINE(WDEPARTMENT_ID||' '||WDEPARTMENT_NAME||' '||WMANAGER_ID||' '||WLOCATION_ID);
 */
 --SELECT * INTO  r_dept FROM DEPARTMENTSWHERE DEPARTMENT_ID = 20;
 --DBMS_OUTPUT.PUT_LINE(r_dept.DEPARTMENT_ID||' '||r_dept.DEPARTMENT_NAME||' '||r_dept.MANAGER_ID||' '||r_dept.LOCATION_ID);
 
 
 SELECT department_id,department_name,manager_id INTO  r_dept2
                 
 FROM DEPARTMENTS
 WHERE DEPARTMENT_ID = 10;
 DBMS_OUTPUT.PUT_LINE(
 r_dept2.dept_id||' '||
 r_dept2.dept_name||' '||
 r_dept2.manager_ıd);
end;

