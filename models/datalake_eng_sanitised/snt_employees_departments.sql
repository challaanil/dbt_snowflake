with employee_department_cte as (
    select 
        emp.EMPLOYEE_ID,
        emp.FIRST_NAME,
        emp.LAST_NAME,
        emp.department_id,
        dept.DEPARTMENT_NAME
    from {{ ref('lnd_employees') }} emp
    inner join {{ ref('lnd_department') }} dept
    on emp.department_id = dept.department_id
)
select 
*
from employee_department_cte