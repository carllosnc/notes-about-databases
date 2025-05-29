-- another example using UnitPrice from tracks

SELECT
  CustomerId,
  Total,
  SUM(Total) OVER (PARTITION BY CustomerId) as CustomerTotal
FROM
  INVOICES
ORDER BY
  CustomerId;
