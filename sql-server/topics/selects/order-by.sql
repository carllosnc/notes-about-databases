USE [learn];

--create product table
CREATE TABLE [dbo].[products]
(
  [id] INT IDENTITY(1,1) NOT NULL,
  [name] VARCHAR(255) NOT NULL,
  [price] INT NOT NULL,
  [created_at] DATETIME NOT NULL,
  [updated_at] DATETIME NOT NULL,
  PRIMARY KEY ([id])
);

-- insert some products
INSERT INTO [dbo].[products]
  ([name], [price], [created_at], [updated_at])
VALUES
  ('Apple', 100, GETDATE(), GETDATE()),
  ('Orange', 150, GETDATE(), GETDATE()),
  ('Banana', 200, GETDATE(), GETDATE()),
  ('Pineapple', 300, GETDATE(), GETDATE()),
  ('Mango', 400, GETDATE(), GETDATE()),
  ('Grape', 500, GETDATE(), GETDATE()),
  ('Watermelon', 600, GETDATE(), GETDATE()),
  ('Strawberry', 700, GETDATE(), GETDATE()),
  ('Cherry', 800, GETDATE(), GETDATE()),
  ('Peach', 900, GETDATE(), GETDATE());

-- select and products and order by price
SELECT *
FROM [dbo].[products]
ORDER BY [price];

-- select and products and order by price descending
SELECT *
FROM [dbo].[products]
ORDER BY [price] DESC;

-- select and products and order by price descending and name ascending
SELECT *
FROM [dbo].[products]
ORDER BY [price] DESC, [name];

-- delete table
DROP TABLE [dbo].[products];
