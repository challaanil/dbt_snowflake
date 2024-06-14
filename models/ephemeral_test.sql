{{
    config(
        materialized='ephemeral'
    )
}}

select * from {{ source("test_dbt", "EMPLOYEES") }}