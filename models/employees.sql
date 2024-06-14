-- {{config(materialized='table')}}
-- SELECT * FROM DATALAKE.DATALAKE_ENG_LANDING.EMPLOYEES
select * from {{ source("test_dbt", "EMPLOYEES") }}
