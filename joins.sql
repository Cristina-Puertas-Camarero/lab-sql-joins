USE sakila

--1
SELECT category.name, COUNT(film_category.film_id)
FROM film_category
JOIN category ON film_category.category_id = category.category_id
GROUP BY category.name;

--2

SELECT s.store_id, c.city, co.country
FROM store AS s
LEFT JOIN address AS a ON s.address_id = a.address_id
LEft JOIN city AS c ON a.city_id = c.city_id
Left JOIN country AS co ON c.country_id = co.country_id;


--3
SELECT s.store_id, SUM(p.amount)
FROM store AS s
LEFT JOIN inventory AS i ON s.store_id = i.store_id
LEFT JOIN rental AS r ON i.inventory_id = r.inventory_id
LEFT JOIN payment AS p ON r.rental_id = p.rental_id
GROUP BY store_id

--4 

SELECT category.name, AVG(film.length)
FROM film
LEFT JOIN film_category ON film.film_id = film_category.film_id
LEft JOIN category ON film_category.category_id = category.category_id
GROUP BY category.name;

--Bonus

SELECT category.name, AVG(film.length)
FROM film
LEFT JOIN film_category ON film.film_id = film_category.film_id
LEFT JOIN category ON film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY AVG(film.length) DESC;

--Bonus 2

