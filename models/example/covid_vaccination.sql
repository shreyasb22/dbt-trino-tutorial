select * from "example".public.covid19_vaccination_insights LIMIT 10
-- Aggregations in the last 30 days
select * from "example".public.covid19_vaccination_insights where date >= current_date - interval '30 days' LIMIT 10