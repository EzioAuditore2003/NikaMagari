{{ config(schema='staging') }}

WITH RECURSIVE CTE AS(
	SELECT CAST('2001-01-01' AS DATE) AS Date

	UNION ALL

	SELECT Date + INTERVAL 1 DAY
	FROM CTE
	WHERE Date < current_date
)

SELECT CAST(REPLACE(CAST(Date AS VARCHAR), '-', '') AS INT) AS DateKey,
		Date,
		DAY(Date) AS WeekDay,
		MONTH(Date) AS Month,
		YEAR(Date) AS Year
FROM CTE
ORDER BY Date DESC