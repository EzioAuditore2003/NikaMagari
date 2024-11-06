{{ config(schema='dm') }}

SELECT
	reseller_id,
	reseller_name,
	commission_pct
FROM {{ ref('resellers_stg') }}