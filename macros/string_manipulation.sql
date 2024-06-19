{% macro lowercase_string(input_string) %}
    lower({{ input_string }}) as {{ input_string|trim }}
{% endmacro %}

{% macro fullname_emp(firstname, lastname) %}
    {{ firstname }} || ' ' || {{ lastname }}
{% endmacro %}

