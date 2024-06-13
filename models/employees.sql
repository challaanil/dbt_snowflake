{{config(materialized='table')}}

--SELECT * FROM DATALAKE.DATALAKE_ENG_LANDING.EMPLOYEES

SELECT * FROM {{source("test_dbt","EMPLOYEES")}}