select
parse_date('%Y%m%d', event_date) as session_date,
count(distinct concat(user_pseudo_id, '-',
cast((select value.int_value from unnest(event_params) where key = 'ga_session_id') as string)
)) as sessions,

-- traffic source
traffic_source.source as source,
traffic_source.medium as medium,
traffic_source.name as campaign,

-- geo
geo.country as country

from `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
where event_name = 'session_start'
group by session_date,
source,
medium,
campaign,
country
order by session_date;
