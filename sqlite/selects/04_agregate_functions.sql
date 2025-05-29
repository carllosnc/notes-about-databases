--- count all types of UnitPrice

SELECT
  UnitPrice,
  COUNT(*) AS TOTAL
FROM
  tracks
GROUP BY
  UnitPrice
ORDER BY
  UnitPrice;

--- calculate the SUM of UnitPrice

SELECT
  UnitPrice,
  '$' || SUM(UnitPrice) AS TOTAL
FROM
  tracks
GROUP BY
  UnitPrice
ORDER BY
  UnitPrice;

--- calculate the AVG of UnitPrice

SELECT
  AVG(UnitPrice)
FROM
  tracks;

--- calculate the MIN of UnitPrice

SELECT
  MIN(UnitPrice)
FROM
  tracks;

--- calculate the MAX of UnitPrice

SELECT
  MAX(UnitPrice)
FROM
  tracks;
