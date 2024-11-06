{{ config(schema='dm') }}

SELECT
	channel_name,
	channel_id
FROM {{ ref('channels_stg') }}