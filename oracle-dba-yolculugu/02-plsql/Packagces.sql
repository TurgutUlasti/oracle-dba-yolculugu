CREATE OR REPLACE PACKAGE mytypes AS
    TYPE emp_data IS RECORD (
            emp_id     employees.employee_id%TYPE,
            first_name employees.first_name%TYPE
    );
    pı CONSTANT NUMBER(3, 2) := 3.14;
    TYPE cursor_type IS REF CURSOR;
    my_execption EXCEPTION;
    PROCEDURE calisanlar (
        p_dept_id employees.department_id%TYPE
    );

    FUNCTION dairealani (
        r NUMBER
    ) RETURN NUMBER;

END mytypes;
/

CREATE OR REPLACE PACKAGE BODY mytypes AS

    PROCEDURE calisanlar (
        p_dept_id employees.department_id%TYPE
    ) IS
        w_emp_data mytypes.emp_data;
        c_cursor   mytypes.cursor_type;
    BEGIN
        OPEN c_cursor FOR SELECT
                                                employee_id,
                                                first_name
                                            FROM
                                                employees
                          WHERE
                              department_id = p_dept_id;

        LOOP
            FETCH c_cursor INTO w_emp_data;
            EXIT WHEN c_cursor%notfound;
            dbms_output.put_line(w_emp_data.emp_id
                                 || ' '
                                 || w_emp_data.first_name);
        END LOOP;

        CLOSE c_cursor;
    END;

    FUNCTION dairealani (
        r NUMBER
    ) RETURN NUMBER IS
        w_sonuc NUMBER;
    BEGIN
        w_sonuc := mytypes.pı * power(r, 2);
        RETURN ( w_sonuc );
    END;

END mytypes;

-- Çalıştırma Kodları 

EXECUTE myTypes.calisanlar(60);

SELECT
    mytypes.dairealanı(3)
FROM
    dual;
