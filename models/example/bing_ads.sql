with bing as (
    SELECT
        ad_id,
        NULL AS add_to_cart,
        adset_id,
        campaign_id,
        channel,
        clicks,
        NULL AS comments,
        conv AS conversions,
        date,
        imps AS impressions,
        NULL AS installs,
        NULL AS likes,
        NULL AS link_clicks,
        NULL AS post_click_conversions,
        NULL AS post_view_conversions,
        NULL AS posts,
        NULL AS purchase,
        NULL AS registrations,
        NULL AS engagements,  -- Assuming clicks as engagements for Bing
        revenue,
        NULL AS shares,
        spend,
        conv AS total_conversions,
        NULL AS video_views,
        NULL AS creative_id
    from {{ ref('src_ads_bing_all_data') }}
)
select * from bing
