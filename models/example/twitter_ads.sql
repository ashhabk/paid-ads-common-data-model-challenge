with twitter as (
    select
        date,
        null as add_to_cart,
        clicks,
        null as comments,
        engagements,
        impressions,
        installs,
        null as likes,
        link_clicks,
        null as post_click_conversions,
        null as post_view_conversions,
        posts,
        purchase,
        registrations,
        revenue,
        shares,
        spend,
        null as total_conversions,
        video_views,
        ad_id,
        adgroup_id as adset_id,
        campaign_id,
        channel,
        null as creative_id
    from {{ ref('src_promoted_tweets_twitter_all_data') }}
)
select * from twitter
