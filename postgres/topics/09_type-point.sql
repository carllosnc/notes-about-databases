-- Point type

USE postgres;
DROP DATABASE IF EXISTS learn_pg;
CREATE DATABASE learn_pg;
USE learn_pg;

-- ==========================================

CREATE TABLE location(
  id SERIAL PRIMARY KEY NOT NULL,
  geopoint POINT
);

INSERT INTO location (geopoint) VALUES
  ('11.323867, 24.515870'),
  ('11.323867, 16.776331'),
  ('54.454073, 94.523521'),
  ('41.619549, 92.043804'),
  ('75.621813, -33.899608'),
  ('64.687365, 125.464542'),
  ('43.177141, 106.115694'),
  ('28.125283, 98.024357');

SELECT * FROM location;
