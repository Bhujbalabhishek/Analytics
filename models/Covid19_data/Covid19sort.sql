
{{ config(materialized='table') }}
with source_data1 as (

    select 
    TOTAL_RECOVERED as TOTAL_RECOVERED,
    TOTAL_ACTIVE_CASES,
  POPULATION,
  NEW_RECOVERED ,
  NEW_DEATHS,
  NEW_CASES,
  Total_deaths as fact_deaths,
    Date,
  New_Active_cases,
Total_cases,
CASE_RECOVERED_RATE,
  Location,
TOTAL_DEATHS_PER_MILLION as death_rate

from fivetran_interview_db.google_sheets.COVID_19_INDONESIA_ABHISHEK_BHUJBAL

)
select *
from source_data1

    


