-------------------------------------------------------------
-- Q4: What category of delays contribute the most at ATL?
-------------------------------------------------------------
SELECT 
	ROUND(SUM(delay_carrier),2),
    ROUND(SUM(delay_weather),2),
    ROUND(SUM(delay_nas),2),
    ROUND(SUM(delay_security),2),
    ROUND(SUM(delay_late_aircraft),2)
FROM	
	atl_cleaned
