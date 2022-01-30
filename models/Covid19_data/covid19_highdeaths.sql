{{ config(materialized='table') }}
with source_data2 as (

    select 
    NEW_DEATHS_PER_MILLION,
     iff (NEW_DEATHS_PER_MILLION > 3, 'high', 'low') as high_deaths,
     location

from fivetran_interview_db.google_sheets.COVID_19_INDONESIA_ABHISHEK_BHUJBAL

)
select *
from source_data2
where high_deaths = 'high'
