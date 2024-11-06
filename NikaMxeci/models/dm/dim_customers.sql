{{ config(schema='dm') }}

SELECT
	customer_id,
	first_name,
	last_name,
	email
FROM {{ ref('customers_stg') }}