USE [learn];

CREATE TABLE [dbo].[users_ex1]
(
  [id] INT IDENTITY(1,1) NOT NULL,
  [name] VARCHAR(255) NOT NULL,
  [avatar] IMAGE,
  [genre] CHAR(1),
  [birthday] DATE,
  [salary] MONEY,
  [is_active] BIT,
  [rating] DECIMAL(5,2),
  [weight] FLOAT,
  [height] REAL,
  [age] SMALLINT,
);

INSERT INTO [dbo].[users_ex1]
  ([name], [avatar], [genre], [birthday], [salary], [is_active], [rating], [weight], [height], [age])
VALUES
  ('Ruth Boyd', NULL, 'F', '1990-01-01', 1000.00, 1, 4.5, 1.70, 1.70, 30),
  ('Nora Hudson', NULL, 'F', '1990-01-01', 1000.00, 1, 4.5, 1.70, 1.70, 30),
  ('Angel Bush', NULL, 'F', '1990-01-01', 1000.00, 1, 4.5, 1.70, 1.70, 30),
  ('Dora Bates', NULL, 'F', '1990-01-01', 1000.00, 1, 4.5, 1.70, 1.70, 30),
  ('Rose Morton', NULL, 'F', '1990-01-01', 1000.00, 1, 4.5, 1.70, 1.70, 30),
  ('Bernice Figueroa', NULL, 'F', '1990-01-01', 1000.00, 1, 4.5, 1.70, 1.70, 30),
  ('Eunice Garrett', NULL, 'F', '1990-01-01', 1000.00, 1, 4.5, 1.70, 1.70, 30),
  ('Sylvia Luna', NULL, 'F', '1990-01-01', 1000.00, 1, 4.5, 1.70, 1.70, 30),
  ('Alta Dixon', NULL, 'F', '1990-01-01', 1000.00, 1, 4.5, 1.70, 1.70, 30),
  ('Manuel Ross', NULL, 'M', '1990-01-01', 1000.00, 1, 4.5, 1.70, 1.70, 30);

SELECT *
FROM [dbo].[users_ex1];

SELECT COUNT(*)
FROM [dbo].[users_ex1];

DROP TABLE [dbo].[users_ex1];
