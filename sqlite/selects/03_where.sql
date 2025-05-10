--- Learning select with some clausules

SELECT
  name,
  milliseconds,
  bytes,
  albumid
FROM
  tracks
WHERE albumid = 1
LIMIT 5;

---

SELECT
  name,
  albumid,
  composer
FROM
  tracks
WHERE
  composer LIKE '%Smith%'
ORDER BY
  albumid
LIMIT 5;

---

SELECT
  name,
  albumid,
  mediatypeid
FROM
  tracks
WHERE
  mediatypeid IN (1, 2, 3)
LIMIT 5;