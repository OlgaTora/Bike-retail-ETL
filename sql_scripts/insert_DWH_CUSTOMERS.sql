INSERT OR IGNORE INTO DWH_CUSTOMERS(
                    customer_id,
                    postcode,
                    past_3_years_bike_related_purchases,
					DOB,
					first_name,
					last_name,
					gender,
					address,
					state,
					country,
					property_valuation,
					job_title,
					job_industry_category,
					wealth_segment,
					deceased_indicator,
					owns_car,
					tenure)
					
SELECT CAST(customer_id AS integer) AS customer_id,
    CAST(postcode AS integer) AS postcode,
	CAST(past_3_years_bike_related_purchases AS integer) AS past_3_years_bike_related_purchases,
    date(DOB) AS DOB,
	first_name,
	last_name,
	gender,
	address,
	state,
	country,
	property_valuation,
	job_title,
	job_industry_category,
	wealth_segment,
	deceased_indicator,
	owns_car,
	tenure

FROM(
SELECT * FROM STG_CUSTOMER_DEMOGRAPHIC as cd
LEFT JOIN STG_CUSTOMER_ADDRESS as ca
ON cd.customer_id == ca.customer_id
UNION ALL
SELECT *
FROM STG_CUSTOMER_DEMOGRAPHIC as cd
LEFT JOIN STG_CUSTOMER_ADDRESS as ca
ON cd.customer_id == ca.customer_id
WHERE cd.customer_id IS NULL);

