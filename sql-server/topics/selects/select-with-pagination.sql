USE [learn];

-- create table user
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

-- add multiple users
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
  ('Cordelia Byrd', 45, '9898', GETDATE(), GETDATE()),
  ('Lula Mccormick', 27, '1705', GETDATE(), GETDATE()),
  ('Trevor Byrd', 69, '1131', GETDATE(), GETDATE()),
  ('Linnie Swanson', 59, '1122', GETDATE(), GETDATE()),
  ('Bruce Powell', 39, '1001', GETDATE(), GETDATE()),
  ('Duane Lynch', 22, '1535', GETDATE(), GETDATE()),
  ('Addie Hicks', 75, '1412', GETDATE(), GETDATE()),
  ('Pauline Lindsey', 51, '1181', GETDATE(), GETDATE()),
  ('Susie Cortez', 56, '1892', GETDATE(), GETDATE()),
  ('Rachel Martin', 75, '1486', GETDATE(), GETDATE()),
  ('Kathryn Hawkins', 76, '1971', GETDATE(), GETDATE());

--select total number of users set a variable
DECLARE @total INT;
SET @total = (SELECT COUNT(*)
FROM [dbo].[users]);

-- select first 5 users
SELECT TOP 5
  *
FROM [dbo].[users];

-- select users from 5 to 10
SELECT *
FROM [dbo].[users]
ORDER BY [id]
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;

-- select users from 10 to 15
SELECT *
FROM [dbo].[users]
ORDER BY [id]
OFFSET 10 ROWS
FETCH NEXT 5 ROWS ONLY;

-- select users from 15 to 20
SELECT *
FROM [dbo].[users]
ORDER BY [id]
OFFSET 15 ROWS
FETCH NEXT 5 ROWS ONLY;

-- select users from 20 to 25
SELECT *
FROM [dbo].[users]
ORDER BY [id]
OFFSET 20 ROWS
FETCH NEXT 5 ROWS ONLY;

DROP TABLE IF EXISTS [dbo].[users];
