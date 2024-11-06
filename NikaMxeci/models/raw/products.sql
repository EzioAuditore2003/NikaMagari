{{ config(schema='raw') }}

SELECT *
FROM {{ source('parquet_input', 'products') }}