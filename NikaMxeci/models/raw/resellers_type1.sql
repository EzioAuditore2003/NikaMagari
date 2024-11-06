{{ config(schema='raw') }}

SELECT *
FROM {{ source('parquet_input', 'resellers_type1') }}