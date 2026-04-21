SELECT 
    MONTH(flight_date) AS month,
    ROUND(AVG(departure_delay), 2) AS avg_departure_delay,
    ROUND(AVG(arrival_delay), 2) AS avg_arrival_delay
FROM flight_combined
WHERE airport = 'ATL'
GROUP BY MONTH(flight_date)
