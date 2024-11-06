{{ config(schema='dm') }}

SELECT
	DateKey,
	Date,
	WeekDay,
	MONTH,
	YEAR
FROM {{ ref('dates_stg') }}