-- Finds the number of flights for each airline, ordered from most to least.
SELECT
    airline,
    COUNT(*) AS flight_count
FROM
    flights
GROUP BY
    airline
ORDER BY
    flight_count DESC;


-- Calculates the average, highest, and lowest flight prices in the dataset.
SELECT
    CAST(AVG(price) AS MONEY) AS average_price,
    MAX(price) as highest_price,
    MIN(price) as lowest_price
FROM
    flights;


-- Calculates the average, highest, and lowest price for each airline.
SELECT
    airline,
    CAST(AVG(price) AS MONEY) AS average_price,
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price
FROM
    flights
GROUP BY
    airline
ORDER BY
    average_price DESC;


-- Finds the top 10 busiest flight routes by counting flights between each source and destination.
SELECT
    source,
    destination,
    COUNT(*) AS number_of_flights
FROM
    flights
GROUP BY
    source,
    destination
ORDER BY
    number_of_flights DESC
LIMIT 10;
