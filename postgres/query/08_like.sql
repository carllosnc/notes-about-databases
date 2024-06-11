-- http://www.postgresqltutorial.com/postgresql-like/

-- Percent ( % ) for matching any sequence of characters.
-- Underscore ( _ ) for matching any single character.

-- Pattern matching
-- 'foo' LIKE 'foo' > true
-- 'foo' LIKE 'f%' > true
-- 'foo' LIKE '_o_' > true
-- 'bar' LIKE 'b_' > false

-- Basic example

SELECT first_name, last_name FROM customer WHERE first_name LIKE 'Jen%';

-- Pattern matching example

SELECT first_name, last_name FROM customer WHERE first_name LIKE '%er%' ORDER BY first_name;
SELECT first_name, last_name FROM customer WHERE first_name LIKE '_her%' ORDER BY first_name;

-- Not like example

SELECT first_name, last_name FROM customer WHERE first_name NOT LIKE 'Jen%' LIMIT 20;

-- ILIKE match case-insensitively values

SELECT first_name, last_name FROM customer WHERE first_name ILIKE 'BAR%'
