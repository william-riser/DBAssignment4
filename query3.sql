-- Query 3
--  What are the total number of unique customers for each state, ordered alphabetically by state?

SELECT State, Count(CustomerId)
    FROM customers
    GROUP BY State
    ORDER BY State ASC