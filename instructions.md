# Instructions for Adding New Ad Platforms to MCDM

## Steps to Add New Data

1. **Add the New Data Source:**
   - Ensure the new data source is loaded into BigQuery.
   - Follow the naming convention: `src_ads_<platform>_all_data`.

2. **Create a New Model File:**
   - Add a new SQL file in the `models/example` directory.
   - Name it `<platform>_ads.sql`.

3. **Define the Transformations:**
   - Use the following structure to define the required transformations:
   ```sql
   with <platform>_ads as (
     select
       date,
       clicks,
       impressions,
       spend,
       null as engagements,  -- Update if the platform has engagement data
       <other necessary fields>,
       '<platform>' as channel
     from {{ source('src_ads', 'src_ads_<platform>_all_data') }}
   )

   select * from <platform>_ads
4. **Update the schema.yml File:**

	Add tests for the new data model.
version: 2
```bash
models:
  - name: <platform>_ads
    description: "Data model for <platform> ads"
    columns:
      - name: date
        tests:
          - not_null
      - name: clicks
        tests:
          - not_null
      - name: impressions
        tests:
          - not_null
      - name: spend
        tests:
          - not_null
      - name: channel
        tests:
          - not_null

```

**5. Run dbt Commands:**

- Execute dbt seed to seed the data.
- Execute dbt run to build the models.
- Execute dbt test to ensure the models are working correctly.


### Example
To add a new ad platform "example_ads", follow the steps:

- Load Data:
	Ensure the src_ads_example_all_data table is available in BigQuery.
- Create Model:
	Create example_ads.sql in the models/example directory with the necessary SQL transformations.
- Update Schema:
	Add schema tests for the new model.

	Run Commands: (in dbt Cloud)
```
	dbt seed
	dbt run
	dbt test
```

**6. Create Dashboard in Looker**
After you run model, check the data in bigquery to make sure your data already uploaded,
After your data already become table in bigquery, then you can create dashboard in Looker using connection in bigquery

here is sample of the dashboard : https://lookerstudio.google.com/reporting/b2284ca7-c9cd-4adc-9f83-c3058e19ca86
## Conclusion
By following these steps, you can successfully integrate new ad platforms into the MCDM.
