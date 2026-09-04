-- ==========================================================
-- Project: GA4 E-commerce Funnel Analysis
-- File: 02_purchase_count.sql
-- Description:
-- Calculates the number of unique purchase sessions in the
-- GA4 Public E-commerce Dataset.
--
-- Tools: Google BigQuery (Standard SQL)
-- ==========================================================

select
count(distinct concat(user_pseudo_id,
"-",
cast((select value.int_value
from unnest(event_params)
where key="ga_session_id")as string)
)) as purchase_count
from `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE event_name = 'purchase'
  AND (SELECT value.int_value FROM UNNEST(event_params) WHERE key = 'ga_session_id') IS NOT NULL;

