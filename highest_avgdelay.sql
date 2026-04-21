SELECT 
	airport,
    ROUND(AVG(departure_delay),2) AS avg_departdelay,
    ROUND(AVG(arrival_delay),2) AS avg_arrivaldelay
FROM
	flight_combined
GROUP BY
	airport
ORDER BY
	avg_departdelay DESC ;