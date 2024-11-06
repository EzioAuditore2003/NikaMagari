{{ config(schema='staging') }}

SELECT *
FROM {{ ref('channels') }}