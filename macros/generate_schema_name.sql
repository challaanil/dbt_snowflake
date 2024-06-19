{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}

        {{ DATALAKE_ENG_SANITISED | trim }}

    {%- endif -%}

{%- endmacro %}