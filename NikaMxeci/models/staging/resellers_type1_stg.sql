{{ config(schema='staging') }}

SELECT CAST (SUBSTRING(p.product_id, LENGTH(p.city) + 1, LENGTH(p.product_id)) AS INT) AS product_id,
	rt.Quantity,
	rt."Total amount" AS TotalAmount,
	c.channel_id,
	cu.customer_id,
	CAST(REPLACE(CAST(rt."Created Date" AS VARCHAR), '-', '') AS INT) AS CreatedDateKey,
	rt."Reseller ID" AS ResellerID,
	rt."Transaction ID" AS TransactionID
FROM
	nikaDbt_raw.resellers_type1 rt
JOIN nikaDbt_raw.products p ON RT."Product name" = p.name
JOIN nikaDbt_raw.channels c ON rt."Sales Channel" = c.channel_name
JOIN nikaDbt_raw.customers cu ON cu.email = rt."Customer Email"