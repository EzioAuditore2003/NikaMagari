{{ config(schema='dm') }}

SELECT product_id,
	Quantity,
	TotalAmount,
	channel_id,
	customer_id,
	CreatedDateKey,
	ResellerID,
	TransactionID
FROM {{ ref('resellers_type1_stg') }}