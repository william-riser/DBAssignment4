-- Query 4
-- Which states have more than 10 unique customers?

SELECT State, Count(CustomerId) AS "CustomerTotal"
    FROM customers
    GROUP BY State
    HAVING Count(CustomerId) > 10
    ORDER BY State ASC;


