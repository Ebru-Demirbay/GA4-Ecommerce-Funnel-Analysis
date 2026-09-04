-- ==========================================================
-- Project: GA4 E-commerce Funnel Analysis
-- File: 01_funnel_analysis.sql
-- Description:
-- Creates a session-level purchase funnel from the GA4
-- Public E-commerce Dataset and calculates the number of
-- unique sessions for each funnel stage.
--
-- Tools: Google BigQuery (Standard SQL)
-- ==========================================================

with funnel as (
  select
  parse_date('%Y%m%d', _TABLE_SUFFIX) as session_date,
  concat(user_pseudo_id, '-',
  cast((select value.int_value from unnest(event_params) where key = 'ga_session_id') as string)) AS session_id,
  event_name
  from `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
  where _TABLE_SUFFIX between '20201101' and '20210131'
  and event_name in ('session_start',
  'view_item',
  'add_to_cart',
  'begin_checkout',
  'add_shipping_info',
  'add_payment_info',
  'purchase')
  and (select value.int_value from unnest(event_params) where key = 'ga_session_id') is not null),
steps as (
  select 'session_start' as funnel_step, 1 as step_order union all
  select 'view_item', 2 union all
  select 'add_to_cart', 3 union all
  select 'begin_checkout', 4 union all
  select 'add_shipping_info', 5 union all
  select 'add_payment_info', 6 union all
  select 'purchase', 7),
dates as (
select day as session_date
from unnest(generate_date_array(date '2020-11-01', date '2021-01-31')) as day),
counts as (
select
session_date,
event_name as funnel_step,
count(distinct session_id) as session_count
from funnel
group by session_date, funnel_step)
select d.session_date,
s.funnel_step,
s.step_order,
coalesce(c.session_count, 0) as session_count
from dates d
cross join steps s
left join counts c on c.session_date = d.session_date
and c.funnel_step = s.funnel_step
order by d.session_date, s.step_order;
