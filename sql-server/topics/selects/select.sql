USE [learn];

CREATE TABLE [dbo].[cars]
(
  [id] INT IDENTITY(10,5) NOT NULL,
  [make] VARCHAR(255) NOT NULL,
  [model] VARCHAR(255) NOT NULL,
  [year] INT NOT NULL,
  [price] INT NOT NULL,
  [mileage] INT NOT NULL,
  [created_at] DATETIME NOT NULL,
  [updated_at] DATETIME NOT NULL,
  PRIMARY KEY ([id])
);

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

-- select all cars
PRINT 'All cars';

SELECT *
FROM [dbo].[cars];

-- count cars
PRINT 'Number of cars';
SELECT COUNT(*)
FROM [dbo].[cars];

-- only toyota cars
PRINT 'Only Toyota cars';
SELECT *
FROM [dbo].[cars]
WHERE [make] = 'Toyota';

-- only cars newer than 2014
PRINT 'Only cars newer than 2014';
SELECT *
FROM [dbo].[cars]
WHERE [year] > 2014;

-- only cars newer than 2014 and less than 20000 miles
PRINT 'Only cars newer than 2014 and less than 20000 miles';
SELECT *
FROM [dbo].[cars]
WHERE [year] > 2014 AND [mileage] < 20000;

-- only cars newer than 2014 or less than 20000 miles and price less than 15000
PRINT 'Only cars newer than 2014 or less than 20000 miles and price less than 15000';
SELECT *
FROM [dbo].[cars]
WHERE [year] > 2014 OR [mileage] < 20000 AND [price] < 15000;

-- delete table
DROP TABLE [dbo].[cars];
