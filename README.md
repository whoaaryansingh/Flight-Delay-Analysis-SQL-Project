The goal of this project is to use SQL to analyse domestic flight data from the United States in order to find important information about performance metrics and delays. Average arrival and departure delays by airline were calculated, the main causes of delays (weather, carrier, NAS, security, and late aircraft) were determined, and flights were classified as "On Time" or "Delayed" using conditional logic. Other insights include analysing the relationship between flight distance and air time, identifying the most delayed flight routes based on origin and destination, assessing day-wise delay trends, and figuring out which airlines have the most delays. In order to improve analysis, the dataset was cleaned by handling null values and grouping distances into buckets. Strong abilities in data aggregation, filtering, grouping, and case analysis are demonstrated in this project.

**Dataset Highlights**

Flight Details: Airline, Flight Number, Date, Route (Origin → Destination)
Timing Data: Departure Time, Arrival Time, Air Time, Delays
Delay Reasons: Carrier, Weather, NAS, Security, Late Aircraft
Additional Fields: Day of Week, Distance, Status Flags

**Key Analyses Performed in SQL**

Average Delays: Calculated average arrival and departure delays grouped by airline
Delay Cause Breakdown: Analyzed contribution of each delay type
Flight Performance: Classified flights as 'On Time' or 'Delayed' using CASE
Weekly Trends: Aggregated delay data by days of the week
Airline Delay Ranking: Ranked airlines by delay count and severity
Route Delay Insights: Identified most delayed origin-destination pairs
Distance vs Delay: Explored delay impact over different distance buckets
Flight Duration Analysis: Compared average air time across distance categories
