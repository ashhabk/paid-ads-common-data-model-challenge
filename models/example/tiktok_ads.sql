with tiktok as (
    select
        ad_id,
        add_to_cart,
        adgroup_id AS adset_id,
        campaign_id,
        channel,
        clicks,
        NULL AS comments,
        conversions,
        date,
        impressions,
        rt_installs AS installs,
        NULL AS likes,
        NULL AS link_clicks,
        NULL AS post_click_conversions,
        NULL AS post_view_conversions,
        NULL AS posts,
        purchase,
        registrations,
        NULL AS engagements,  -- Summing relevant columns
        NULL AS revenue,
        NULL AS shares,
        spend,
        conversions AS total_conversions,
        video_views,
        NULL AS creative_id
    from {{ ref('src_ads_tiktok_ads_all_data') }}
)
select * from tiktok
