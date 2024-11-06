{{ config(schema='staging') }}

SELECT name,
		city,
		price,
		CAST (SUBSTRING(product_id, LENGTH(city) + 1, LENGTH(product_id)) AS INT) AS product_id
FROM {{ ref('products') }}