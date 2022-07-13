-- write your queries here
SELECT * 
FROM owners
FULL JOIN vehicles
ON owners.id = vehicles.owner_id;

SELECT first_name, last_name, COUNT(owner_id)
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY (first_name, last_name)
ORDER BY first_name ASC;

SELECT first_name, last_name,
ROUND(AVG(price))
AS average_price,
COUNT(owner_id)
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY (first_name, last_name)
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;