with facebook as (
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
    from {{ ref('src_ads_creative_facebook_all_data') }}
)
select * from facebook
