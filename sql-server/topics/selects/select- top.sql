USE [learn];

--cars table
CREATE TABLE [dbo].[cars]
(
  [id] INT IDENTITY(1,1) NOT NULL,
  [make] VARCHAR(255) NOT NULL,
  [model] VARCHAR(255) NOT NULL,
  [year] INT NOT NULL,
  [price] INT NOT NULL,
  [mileage] INT NOT NULL,
  [created_at] DATETIME NOT NULL,
  [updated_at] DATETIME NOT NULL,
  PRIMARY KEY ([id])
);

-- insert some cars
INSERT INTO [dbo].[cars]
  ([make], [model], [year], [price], [mileage], [created_at], [updated_at])
VALUES
  ('Ford', 'Fiesta', 2010, 5000, 50000, GETDATE(), GETDATE()),
  ('Ford', 'Focus', 2012, 8000, 30000, GETDATE(), GETDATE()),
  ('Ford', 'Mustang', 2015, 15000, 20000, GETDATE(), GETDATE()),
  ('Honda', 'Civic', 2014, 9000, 30000, GETDATE(), GETDATE()),
  ('Honda', 'Accord', 2015, 12000, 20000, GETDATE(), GETDATE()),
  ('Honda', 'CR-V', 2016, 18000, 10000, GETDATE(), GETDATE()),
  ('Toyota', 'Corolla', 2013, 8000, 30000, GETDATE(), GETDATE()),
  ('Toyota', 'Camry', 2015, 16000, 40000, GETDATE(), GETDATE()),
  ('Toyota', 'Prius', 2016, 20000, 30000, GETDATE(), GETDATE());

-- select all cars, order by price descending and top 3
SELECT TOP 3
  *
FROM [dbo].[cars]
ORDER BY [price] DESC;

--top 3 with ties
SELECT TOP 3 WITH TIES
  *
FROM [dbo].[cars]
ORDER BY [price] DESC;

-- select all cars, order by price descending and top 50%
SELECT TOP 50 PERCENT
  *
FROM [dbo].[cars]
ORDER BY [price] DESC;

--delete table
DROP TABLE [dbo].[cars];