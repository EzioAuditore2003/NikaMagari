{{ config(schema='staging') }}

SELECT *
FROM {{ ref('resellers') }}