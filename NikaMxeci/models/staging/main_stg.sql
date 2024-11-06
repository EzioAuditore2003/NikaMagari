{{ config(schema='staging') }}

SELECT transaction_id,
		customer_id,
		CAST (SUBSTRING(p.product_id, LENGTH(p.city) + 1, LENGTH(p.product_id)) AS INT) AS product_id,
		amount,
		qty,
		channel_id,
		CAST(REPLACE(CAST(bought_date AS VARCHAR), '-', '') AS INT) AS BoughtDateKey
FROM {{ ref('main') }} m
JOIN {{ ref('products') }} p ON m.product_id = p.product_id
