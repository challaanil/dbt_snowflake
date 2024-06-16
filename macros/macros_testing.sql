{% macro fullname(firstname, lastname) %}
    {{ firstname }} || ' ' || {{ lastname }}
{% endmacro %}
