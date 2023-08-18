USE [learn];

-- create users with name, age, password, created_at, updated_at
CREATE TABLE [dbo].[users]
(
  [id] INT IDENTITY(1,1) NOT NULL,
  [name] VARCHAR(255) NOT NULL,
  [age] INT NOT NULL,
  [password] VARCHAR(255) NOT NULL,
  [created_at] DATETIME NOT NULL,
  [updated_at] DATETIME NOT NULL,
  PRIMARY KEY ([id])
);

-- insert some users
INSERT INTO [dbo].[users]
  ([name], [age], [password], [created_at], [updated_at])
VALUES
  ('Luella Copeland', 62, '10945', GETDATE(), GETDATE()),
  ('Russell Summers', 10, '135176', GETDATE(), GETDATE()),
  ('Bess Reese', 57, '16856', GETDATE(), GETDATE()),
  ('Alma Schneider', 26, '13198', GETDATE(), GETDATE()),
  ('Alvin Manning', 24, '630', GETDATE(), GETDATE()),
  ('Jennie Fitzgerald', 57, '93109', GETDATE(), GETDATE()),
  ('Peter Mendez', 36, '208154', GETDATE(), GETDATE()),
  ('Michael Hawkins', 14, '100145', GETDATE(), GETDATE()),
  ('Mae Frank', 32, '232155', GETDATE(), GETDATE()),
  ('Clifford Atkins', 25, '121251', GETDATE(), GETDATE()),
  ('Amanda Ortiz', 25, '223142', GETDATE(), GETDATE()),
  ('Gilbert Newton', 51, '221227', GETDATE(), GETDATE()),
  ('Harriett Alvarado', 5, '9095', GETDATE(), GETDATE()),
  ('Joshua Hunt', 53, '13176', GETDATE(), GETDATE()),
  ('Helena Howard', 9, '23243', GETDATE(), GETDATE()),
  ('Estelle Ortega', 53, '81183', GETDATE(), GETDATE()),
  ('Pauline Hamilton', 23, '15883', GETDATE(), GETDATE()),
  ('Bernice Alvarado', 55, '103180', GETDATE(), GETDATE()),
  ('Josephine Simpson', 28, '21978', GETDATE(), GETDATE()),
  ('Steven George', 49, '174190', GETDATE(), GETDATE()),
  ('Mittie Rivera', 4, '24374', GETDATE(), GETDATE()),
  ('Lucas Carter', 31, '213140', GETDATE(), GETDATE()),
  ('Alexander Carlson', 12, '161211', GETDATE(), GETDATE()),
  ('Cordelia Byrd', 45, '9898', GETDATE(), GETDATE());

--select first 5 users
SELECT *
FROM [dbo].[users]
ORDER BY [age]
OFFSET 0 ROWS
FETCH NEXT 5 ROWS ONLY;

-- select all user, order by age and offset 5 rows
SELECT *
FROM [dbo].[users]
ORDER BY [age]
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;

-- delete table
DROP TABLE [dbo].[users];
