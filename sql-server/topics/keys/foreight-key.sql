USE [learn];

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
  [user_id] INT NOT NULL,
  PRIMARY KEY ([id]),

  CONSTRAINT [FK_cars_users] FOREIGN KEY ([user_id])
  REFERENCES [dbo].[users] ([id])
);

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

INSERT INTO [dbo].[cars]
  ([make], [model], [year], [price], [mileage], [created_at], [updated_at], [user_id])
VALUES
  ('Ford', 'Fiesta', 2010, 5000, 50000, GETDATE(), GETDATE(), 1),
  ('Ford', 'Focus', 2012, 8000, 30000, GETDATE(), GETDATE(), 2),
  ('Ford', 'Mustang', 2015, 15000, 20000, GETDATE(), GETDATE(), 3),
  ('Honda', 'Civic', 2014, 9000, 30000, GETDATE(), GETDATE(), 4),
  ('Honda', 'Accord', 2015, 12000, 20000, GETDATE(), GETDATE(), 5),
  ('Honda', 'CR-V', 2016, 18000, 10000, GETDATE(), GETDATE(), 6),
  ('Toyota', 'Corolla', 2013, 8000, 30000, GETDATE(), GETDATE(), 7),
  ('Toyota', 'Camry', 2015, 16000, 40000, GETDATE(), GETDATE(), 8),
  ('Toyota', 'Prius', 2016, 20000, 30000, GETDATE(), GETDATE(), 9),
  ('Ford', 'Fiesta', 2010, 5000, 50000, GETDATE(), GETDATE(), 10),
  ('Ford', 'Focus', 2012, 8000, 30000, GETDATE(), GETDATE(), 11),
  ('Ford', 'Mustang', 2015, 15000, 20000, GETDATE(), GETDATE(), 12),
  ('Honda', 'Civic', 2014, 9000, 30000, GETDATE(), GETDATE(), 13),
  ('Honda', 'Accord', 2015, 12000, 20000, GETDATE(), GETDATE(), 14),
  ('Honda', 'CR-V', 2016, 18000, 10000, GETDATE(), GETDATE(), 15),
  ('Toyota', 'Corolla', 2013, 8000, 30000, GETDATE(), GETDATE(), 16),
  ('Toyota', 'Camry', 2015, 16000, 40000, GETDATE(), GETDATE(), 17),
  ('Toyota', 'Prius', 2016, 20000, 30000, GETDATE(), GETDATE(), 18);

SELECT *
FROM [dbo].[cars]
WHERE [user_id] IN (
  SELECT [id]
FROM [dbo].[users]
WHERE [age] > 30
);

DROP TABLE [dbo].[cars];
DROP TABLE [dbo].[users];
