with bing as (
    select
        date,
        null as add_to_cart,
        clicks,
        null as comments,
        null as engagements,
        impressions,
        null as installs,
        null as likes,
        null as link_clicks,
        null as post_click_conversions,
        null as post_view_conversions,
        null as posts,
        null as purchase,
        null as registrations,
        null as revenue,
        null as shares,
        spend,
        null as total_conversions,
        null as video_views,
        ad_id,
        null as adset_id,
        campaign_id,
        channel,
        null as creative_id
    from {{ ref('src_ads_bing_all_data') }}
)
select * from bing
