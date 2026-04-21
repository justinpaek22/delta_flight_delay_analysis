CREATE TABLE flight_combined AS
SELECT *, 'ATL' AS airport FROM atl_cleaned
UNION ALL
SELECT *, 'DTW' AS airport FROM dtw_cleaned
UNION ALL
SELECT *, 'JFK' AS airport FROM jfk_cleaned
UNION ALL
SELECT *, 'LAX' AS airport FROM lax_cleaned
UNION ALL
SELECT *, 'MSP' AS airport FROM msp_cleaned ;



