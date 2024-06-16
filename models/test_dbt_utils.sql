{% set DEPARTMENT_LIST = dbt_utils.get_column_values(source("test_dbt", "EMPLOYEES"), column='DEPARTMENT_ID') %}
{{DEPARTMENT_LIST}}
{% for DEPARTMENT in DEPARTMENT_LIST %}
{{DEPARTMENT}}
{% endfor %}