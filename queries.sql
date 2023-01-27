-- write your queries here

SELECT * FROM owners JOIN vehicles ON owners.id = vehicles.owner_id;

SELECT first_name, last_name, count(v.id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.id ORDER BY first_name ASC;

SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(*) AS count FROM owners o JOIN vehicles v ON o.id = v.owner_id  GROUP BY o.id HAVING COUNT(*) > 1 ORDER BY first_name DESC;

