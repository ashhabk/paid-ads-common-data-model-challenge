with twitter as (
  select
    __insert_date as date,
    add_to_cart,
    clicks,
    comments,
    engagement as engagements,
    impressions,
    null as installs,
    likes,
    null as link_clicks,
    null as post_click_conversions,
    null as post_view_conversions,
    null as posts,
    null as purchase,
    null as registrations,
    null as revenue,
    retweets as shares,
    spend,
    null as total_conversions,
    null as video_views,
    tweet_id as ad_id,
    null as adset_id,
    campaign_id,
    'twitter' as channel,
    null as creative_id
  from
    {{ source('src_ads', 'src_promoted_tweets_twitter_all_data') }}
)

select * from twitter
