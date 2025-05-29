/* select all albuns when title stats with 'F' */

SELECT
  AlbumId,
  Title
FROM
  Albums
WHERE
  Title = 'Facelift';
