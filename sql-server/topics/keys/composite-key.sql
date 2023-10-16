USE [learn];

CREATE TABLE [dbo].[course]
(
  [id] INT IDENTITY(1,1) NOT NULL,
  [name] VARCHAR(255) NOT NULL,
  [description] VARCHAR(255) NOT NULL,
  [created_at] DATETIME NOT NULL,
  [updated_at] DATETIME NOT NULL,
  PRIMARY KEY ([id])
);

CREATE TABLE [dbo].[user]
(
  [id] INT IDENTITY(1,1) NOT NULL,
  [name] VARCHAR(255) NOT NULL,
  [age] INT NOT NULL,
  [course_id] INT NOT NULL,
  PRIMARY KEY ([id], [course_id]),
  CONSTRAINT [FK_user_course] FOREIGN KEY ([course_id])
  REFERENCES [dbo].[course] ([id])
);

INSERT INTO [dbo].[course]
  ([name], [description], [created_at], [updated_at])
VALUES
  ('Math', 'Mathematics', GETDATE(), GETDATE()),
  ('Science', 'Science', GETDATE(), GETDATE()),
  ('English', 'English', GETDATE(), GETDATE()),
  ('History', 'History', GETDATE(), GETDATE()),
  ('Geography', 'Geography', GETDATE(), GETDATE()),
  ('Computer Science', 'Computer Science', GETDATE(), GETDATE()),
  ('Art', 'Art', GETDATE(), GETDATE()),
  ('Music', 'Music', GETDATE(), GETDATE()),
  ('Physical Education', 'Physical Education', GETDATE(), GETDATE()),
  ('Home Economics', 'Home Economics', GETDATE(), GETDATE()),
  ('Foreign Language', 'Foreign Language', GETDATE(), GETDATE()),
  ('Health', 'Health', GETDATE(), GETDATE()),
  ('Religion', 'Religion', GETDATE(), GETDATE());

--insert some users
INSERT INTO [dbo].[user]
  ([name], [age], [course_id])
VALUES
  ('Luella Copeland', 62, 1),
  ('Russell Summers', 10, 2),
  ('Bess Reese', 57, 3),
  ('Alma Schneider', 26, 4),
  ('Alvin Manning', 24, 5),
  ('Jennie Fitzgerald', 57, 6),
  ('Peter Mendez', 36, 7),
  ('Michael Hawkins', 14, 8),
  ('Mae Frank', 32, 9),
  ('Clifford Atkins', 25, 10),
  ('Amanda Ortiz', 25, 11),
  ('Gilbert Newton', 51, 12),
  ('Harriett Alvarado', 5, 1),
  ('Joshua Hunt', 53, 2),
  ('Helena Howard', 9, 3),
  ('Estelle Ortega', 53, 4),
  ('Pauline Hamilton', 23, 5),
  ('Bernice Alvarado', 55, 6),
  ('Josephine Simpson', 28, 7),
  ('Steven George', 49, 8);

--select all users
SELECT *
FROM [dbo].[user];

--select all courses
SELECT *
FROM [dbo].[course];

DROP TABLE [dbo].[user];
DROP TABLE [dbo].[course];
