with bing as (
  select
    __insert_date as date,
    null as add_to_cart,
    clicks,
    comments,
    engagements,
    impressions,
    install as installs,
    likes,
    null as link_clicks,
    post_click_conversions,
    post_view_conversions,
    posts,
    purchase,
    registrations,
    revenue,
    shares,
    spend,
    total_conversions,
    video_views,
    ad_id,
    adset_id,
    campaign_id,
    'bing' as channel,
    null as creative_id
  from
    {{ source('src_ads', 'src_ads_bing_all_data') }}
)

select * from bing
