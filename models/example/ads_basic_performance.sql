with combined as (
    select * from {{ ref('bing_ads') }}
    union all
    select * from {{ ref('facebook_ads') }}
    union all
    select * from {{ ref('twitter_ads') }}
    union all
    select * from {{ ref('tiktok_ads') }}
)

select
    date,
    add_to_cart,
    clicks,
    comments,
    engagements,
    impressions,
    installs,
    likes,
    link_clicks,
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
    channel,
    creative_id
from combined
