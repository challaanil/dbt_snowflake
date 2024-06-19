{% set DEPARTMENT_LIST = dbt_utils.get_column_values(source('test_dbt', 'EMPLOYEES'), column='DEPARTMENT_ID') %}

{% for DEPARTMENT in DEPARTMENT_LIST %}
    {% if DEPARTMENT == 50 %}
        {{ 'Valid' }}
    {% endif %}
{% endfor %}

{{ 'Not valid' }}
