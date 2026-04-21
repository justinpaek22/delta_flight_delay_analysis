-------------------------------------------------------------
--Q1: Do delays spike during certain hours of the day?
-------------------------------------------------------------	
SELECT 
	CASE
		WHEN HOUR(scheduled_departure_time ) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN HOUR(scheduled_departure_time ) BETWEEN 12 AND 16 THEN 'Afternoon'
        WHEN HOUR(scheduled_departure_time ) BETWEEN 17 AND 23 THEN 'Evening'
        ELSE 'Other'
	END AS time_of_day,
    ROUND(AVG(departure_delay),2) AS avg_departdelay,
    ROUND(AVG(arrival_delay),2) AS avg_arrivaldelay
FROM
	atl_cleaned
GROUP BY
	time_of_day
ORDER BY
	avg_departdelay DESC;
