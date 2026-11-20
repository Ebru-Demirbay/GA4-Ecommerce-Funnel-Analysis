select
  parse_date('%Y%m%d', event_date) as session_date,
  count(distinct concat(user_pseudo_id, '-',
  cast((select value.int_value from unnest(event_params) where key = 'ga_session_id') as string))) as sessions,
  
  -- device
  device.category as device_category,
  device.language as device_language,
  device.operating_system as operating_system,

from `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
where event_name = 'session_start'
group by session_date,
device_category,
device_language,
operating_system
order by session_date;
