Use flight;

-- Average Arrival and Departure Delay by Airline
-- Goal: Identify which airlines perform better or worse in terms of delays.

SELECT Airline, ROUND(AVG(ArrDelay), 2) AS AvgArrDelay, ROUND(AVG(DepDelay), 2) AS AvgDepDelay
FROM flight_data
GROUP BY Airline
ORDER BY AvgArrDelay ASC;


-- Delay Causes Breakdown (Average of Each Delay Type)
-- Goal: Understand which category of delay (Carrier, Weather, NAS, etc.) contributes most to total delay.

SELECT 
    ROUND(AVG(CarrierDelay), 2) AS Avg_CarrierDelay,
    ROUND(AVG(WeatherDelay), 2) AS Avg_WeatherDelay,
    ROUND(AVG(NASDelay), 2) AS Avg_NASDelay,
    ROUND(AVG(SecurityDelay), 2) AS Avg_SecurityDelay,
    ROUND(AVG(LateAircraftDelay), 2) AS Avg_LateAircraftDelay
FROM flight_data;

-- On-Time vs Delayed Flights
-- Goal: Find how many flights were delayed vs on-time based on arrival delay.

SELECT 
    CASE 
        WHEN ArrDelay <= 0 THEN 'On Time'
        ELSE 'Delayed'
    END AS Status,
    COUNT(*) AS Total_Flights
FROM flight_data
GROUP BY Status;

-- Day-wise Delay Trend
-- Goal: Check which days of the week have higher average delays.

SELECT DayOfWeek, 
    ROUND(AVG(ArrDelay), 2) AS AvgArrDelay, 
    ROUND(AVG(DepDelay), 2) AS AvgDepDelay
FROM flight_data
GROUP BY DayOfWeek
ORDER BY DayOfWeek;


-- Airlines with Most Late Flights (Flight Status Count)
-- Goal: Know which airlines have the highest count of delayed flights.

SELECT Airline,
    CASE
        WHEN ArrDelay > 0 THEN 'Delayed'
        ELSE 'On Time'
    END AS Flight_Status,
    COUNT(*) AS Total_Flights
FROM flight_data
GROUP BY Airline, Flight_Status
ORDER BY Airline, Flight_Status;

-- Top 10 Most Delayed Routes
-- Goal: Identify Origin-Destination pairs with the worst delays.

SELECT Origin, Dest, COUNT(*) AS Total_Flights,
    ROUND(AVG(ArrDelay), 2) AS Avg_Arrival_Delay
FROM flight_data
GROUP BY Origin, Dest
ORDER BY Avg_Arrival_Delay DESC
LIMIT 10;

-- Average AirTime by Distance Bucket
-- Goal: See if airtime is proportional to flight distance buckets.

SELECT 
    CASE 
        WHEN Distance < 250 THEN 'Very Short'
        WHEN Distance < 500 THEN 'Short'
        WHEN Distance < 1000 THEN 'Medium'
        ELSE 'Long'
    END AS Distance_Range,
    ROUND(AVG(AirTime), 2) AS Avg_AirTime
FROM flight_data
GROUP BY Distance_Range
ORDER BY Avg_AirTime DESC;


-- Total Delay Time by Airline
-- SELECT 
Select Airline, SUM(ArrDelay) AS Total_ArrDelay, SUM(DepDelay) AS Total_DepDelay
FROM flight_data
GROUP BY Airline
ORDER BY Total_ArrDelay DESC;