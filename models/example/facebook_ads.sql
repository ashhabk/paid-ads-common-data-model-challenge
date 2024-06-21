with facebook as (
    select
        ad_id,
        add_to_cart,
        adset_id,
        campaign_id,
        channel,
        clicks,
        comments,
        (complete_registration + purchase) AS conversions,  -- Adding complete_registration and purchase as conversions
        date,
        impressions,
        NULL AS installs,
        likes,
        inline_link_clicks AS link_clicks,
        NULL AS post_click_conversions,
        NULL AS post_view_conversions,
        NULL AS posts,
        purchase,
        complete_registration AS registrations,
        (likes + shares + comments+ views+ purchase+ clicks) AS engagements,  -- Summing relevant columns
        NULL AS revenue,
        shares,
        spend,
        (purchase) AS total_conversions,  -- Summing up conversions for total_conversions
        views AS video_views,
        creative_id
    from {{ ref('src_ads_creative_facebook_all_data') }}
)
select * from facebook
