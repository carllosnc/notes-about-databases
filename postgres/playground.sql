-- Explore some queries

USE dvdrental;

SELECT
  CONCAT(first_name, '--', COUNT(*))
FROM
  actor
GROUP BY
 first_name
HAVING
  COUNT(*) > 1
ORDER BY COUNT(*) DESC;
