DROP TABLE if exists STG_CUSTOMER_DEMOGRAPHIC;
CREATE TABLE if not exists STG_CUSTOMER_DEMOGRAPHIC(
customer_id varchar(128),
first_name varchar(128),
last_name varchar(128),
gender varchar(24),
past_3_years_bike_related_purchases varchar(128),
DOB varchar(128),
job_title varchar(128),
job_industry_category varchar(128),
wealth_segment varchar(128),
deceased_indicator varchar(24),
default_ varchar(128),
owns_car varchar(24),
tenure varchar(128));
