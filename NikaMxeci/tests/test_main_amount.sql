SELECT *
FROM nikaDbt_raw.main m
JOIN nikaDbt_raw.products p ON M.product_id = P.product_id
WHERE amount != M.qty * P.price