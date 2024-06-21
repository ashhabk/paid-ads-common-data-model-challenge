with twitter as (
    select
        NULL AS ad_id,
        NULL AS add_to_cart,
        NULL AS adset_id,
        campaign_id,
        channel,
        clicks,
        comments,
        NULL AS conversions,
        date,
        impressions,
        NULL AS installs,
        likes,
        url_clicks AS link_clicks,
        NULL AS post_click_conversions,
        NULL AS post_view_conversions,
        NULL AS posts,
        NULL AS purchase,
        NULL AS registrations,
        engagements,
        NULL AS revenue,
        NULL AS shares,
        spend,
        NULL AS total_conversions,
        video_total_views AS video_views,
        NULL AS creative_id
    from {{ ref('src_promoted_tweets_twitter_all_data') }}
)
select * from twitter
