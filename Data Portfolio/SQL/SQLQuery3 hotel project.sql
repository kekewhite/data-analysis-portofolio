select * from dbo.['2018$'] 

select * from dbo.['2019$']

select * from dbo.['2020$'];

with hotels as (
select * from dbo.['2018$'] 
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

select arrival_date_year, 
(stays_in_week_nights+stays_in_weekend_nights)*adr 
as revenue from hotels



with hotels as (
select * from dbo.['2018$'] 
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

select arrival_date_year, 
hotel,
round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue 
from hotels
group by arrival_date_year,hotel

select * from dbo.market_segment$



with hotels as (
select * from dbo.['2018$'] 
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

select * from hotels
left join market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal

select * from hotels