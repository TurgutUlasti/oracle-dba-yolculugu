-- PL/SQL içinde statik komutların kullanımı (Static SQL - DML - TCL)
--desc employees2;
--select * from employees2;
DECLARE 
emp_id          employees2.employee_id%type;
emp_first_name  employees2.first_name%type :='Turgut';
emp_last_name   employees2.last_name%type  :='Ulaştı';
emp_job_id      employees2.job_id%type     :='PL/SQL';
BEGIN
SELECT nvl(max(employee_id) , 0) + 1 Into emp_id from employees2;
Insert Into employees2(

employee_id,
first_name,
last_name,
job_id,email,
hire_date
)
Values
(emp_id,emp_first_name,emp_last_name,emp_job_id,'abc@xyz.com',SYSDATE);

update employees2 set
job_id='DBA' 
where employee_id = emp_id;
/*delete employees2 where employee_id = emp_id
RETURNING employee_id,first_name,job_id INTO
emp_id,emp_first_name,emp_job_id;
*/
--rollback;
COMMIT;
dbms_output.PUT_LINE(emp_id ||' '||emp_first_name 
|| ' '||emp_job_id);
end;

