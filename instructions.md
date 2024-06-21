# Instructions for Adding Data from New Ad Platforms to MCDM

## Step 1: Add Source Data
1. Upload the raw data file from the new ad platform to your BigQuery dataset.
2. Create a new source table in BigQuery. For example, if the new platform is `Pinterest`, name the table as `src_ads_pinterest_all_data`.

## Step 2: Update the dbt Models
1. Create a new SQL file in the `models` folder of your dbt Cloud repository. For example, `pinterest_ads.sql`.
2. Write a SQL query to transform the raw data into the desired format. Ensure the column names match the standard structure used in the existing models.

Example:
```sql
CREATE OR REPLACE TABLE `your_project.your_dataset.pinterest_ads` AS
SELECT
  date,
  add_to_cart,
  clicks,
  comments,
  (likes + shares + comments) AS engagements,  -- Modify based on available columns
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
  total_conversions,
  video_views,
  ad_id,
  adset_id,
  campaign_id,
  channel,
  creative_id,
  spend
FROM `your_project.your_dataset.src_ads_pinterest_all_data`


### Step 2: Commit and Push Changes

1. **Add the new Markdown file to your repository**.
2. **Commit and push all changes** to the repository.

### Step 3: Fill out the Submission Form

1. **Open the submission form**: [Submission Form](https://form.typeform.com/to/IP3EsX0N)
2. **Provide the required information**:
   - A link to your dbt Cloud repository that contains the completed MCDM for the `ads_basic_performance` report.
   - A link to the recreated dashboard.
   - Ensure the instructions for adding data from new ad platforms are included in your repository.

### Step 4: Join the Telegram Group (Optional)

1. **Join the Telegram group** for any questions: [Telegram: @kobzevvv](https://t.me/kobzevvv)

### Step 5: Verify and Submit

1. **Double-check** all the provided links and information.
2. **Submit** the form.

### Example Links
- **dbt Cloud Repository**: `https://uq359.us1.dbt.com/dashboard/70403103933196/projects/70403103938248/`
- **Looker Dashboard**: `https://lookerstudio.google.com/reporting/b2284ca7-c9cd-4adc-9f83-c3058e19ca86`

Good luck with your submission! If you have any questions, feel free to reach out via the provided Telegram link.
