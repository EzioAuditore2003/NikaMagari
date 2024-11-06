{{ config(schema='dm') }}

SELECT
	name,
	city,
	price,
	product_id
FROM {{ ref('product_stg') }}