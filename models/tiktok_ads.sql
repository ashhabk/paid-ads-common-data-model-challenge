with tiktok as (
  select
    date,
    add_to_cart,
    clicks,
    null as comments,
    null as engagements,
    impressions,
    rt_installs as installs,
    null as likes,
    null as link_clicks,
    null as post_click_conversions,
    null as post_view_conversions,
    null as posts,
    purchase,
    registrations,
    null as revenue,
    null as shares,
    spend,
    conversions as total_conversions,
    video_views,
    ad_id,
    adgroup_id as adset_id,
    campaign_id,
    'tiktok' as channel,
    null as creative_id
  from
    {{ source('src_ads', 'src_ads_tiktok_ads_all_data') }}
)

select * from tiktok
