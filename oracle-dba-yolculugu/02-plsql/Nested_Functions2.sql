--Nested Functions
--PROCEDURE VE FUNCTİON

DECLARE
    CURSOR c_dept IS
    SELECT
        department_id
    FROM
        departments;

    r_dept c_dept%rowtype;

    FUNCTION dept_name (
        p_dept departments.department_id%TYPE
    ) RETURN departments.department_name%TYPE IS
        w_dept_name departments.department_name%TYPE;
    BEGIN
        SELECT
            department_name
        INTO w_dept_name
        FROM
            departments
        WHERE
            department_id = p_dept;

        RETURN ( w_dept_name );
    EXCEPTION
        WHEN no_data_found THEN
            RETURN ( NULL );
    END;

    PROCEDURE emp_oku (
        p_dept departments.department_id%TYPE
    ) IS
        w_dept_adi departments.department_name%TYPE;
    BEGIN
        dbms_output.new_line;
        --2.tanımlama
        w_dept_adi := dept_name(p_dept);
        dbms_output.put_line(p_dept
                             || ' - '
                             || w_dept_adi);
       /* 2.tanımlama
       dbms_output.put_line(p_dept
                             || ' - '
                             || dept_name(p_dept)); */
        dbms_output.put_line('---------------------');
        FOR i IN (
            SELECT
                employee_id,
                last_name
            FROM
                employees
            WHERE
                department_id = p_dept
        ) LOOP
            dbms_output.put_line(i.employee_id
                                 || ' '
                                 || i.last_name);
        END LOOP;

    END;

BEGIN -- Main Block

    OPEN c_dept;
    LOOP
        FETCH c_dept INTO r_dept;
        EXIT WHEN c_dept%notfound;
        emp_oku(r_dept.department_id);
    END LOOP;

    CLOSE c_dept;
END;