with facebook as (
  select
    date,
    add_to_cart,
    clicks,
    comments,
    engagements,
    impressions,
    mobile_app_install as installs,
    likes,
    inline_link_clicks as link_clicks,
    post_click_conversions,
    post_view_conversions,
    posts,
    purchase,
    complete_registration as registrations,
    purchase_value as revenue,
    shares_2 as shares,
    spend,
    purchase_2 as total_conversions,
    views_2 as video_views,
    ad_id,
    adset_id,
    campaign_id,
    'facebook' as channel,
    creative_id
  from
    {{ source('src_ads', 'src_ads_creative_facebook_all_data') }}
)

select * from facebook
