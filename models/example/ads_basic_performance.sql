with combined as (
    select * from {{ ref('bing_ads') }}
    union all
    select * from {{ ref('facebook_ads') }}
    union all
    select * from {{ ref('twitter_ads') }}
    union all
    select * from {{ ref('tiktok_ads') }}
)

select *
from combined
