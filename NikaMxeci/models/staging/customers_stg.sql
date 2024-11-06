{{ config(schema='staging') }}

SELECT *
FROM {{ ref('customers') }}