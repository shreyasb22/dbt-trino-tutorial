{{ config(
    materialized='table',
    tags=['aggregations']
) }}

with raw_data as (
    select
        "date",
        "country_region",
        "sni_covid19_vaccination"
    from "example".public.covid19_vaccination_insights
)

select
    "date",
    "country_region",
    sum("sni_covid19_vaccination") as total_vaccinations
from raw_data
group by 1, 2;