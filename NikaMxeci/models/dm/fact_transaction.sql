{{ config(schema='dm') }}

SELECT
	transaction_id,
	customer_id,
	product_id,
	amount,
	qty,
	channel_id,
	BoughtDateKey
FROM {{ ref('main_stg') }}