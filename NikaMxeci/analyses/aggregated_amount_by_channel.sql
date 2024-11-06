SELECT DC.channel_name AS ChannelName,
		SUM(FT.amount) AS TotalAmount,
		MIN(FT.amount) AS MinAmount,
		MAX(FT.amount) AS MaxAmount,
		AVG(FT.amount) AS AverageAmount
FROM {{ ref('fact_transaction') }} ft
JOIN {{ ref('dim_channels') }} dc ON FT.channel_id = DC.channel_id
GROUP BY DC.channel_name