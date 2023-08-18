USE [learn];

CREATE TABLE [dbo].[users]
(
  [id] INT IDENTITY(1,1) NOT NULL,
  [name] VARCHAR(255) NOT NULL,
  PRIMARY KEY ([id])
);

ALTER TABLE [dbo].[users]
  ADD [email] VARCHAR(255) NOT NULL,
  [password] VARCHAR(255) NOT NULL,
  [created_at] DATETIME NOT NULL,
  [updated_at] DATETIME NOT NULL;

INSERT INTO [dbo].[users]
  ([name], [email], [password], [created_at], [updated_at])
VALUES
  ('Willie West', 'pu@ja.ph', '20685', GETDATE(), GETDATE()),
  ('Roy Lewis', 'hij@pegul.ro', '34973', GETDATE(), GETDATE()),
  ('May Rodgers', 'bawibo@urpit.sy', '24810', GETDATE(), GETDATE()),
  ('Dennis Diaz', 'sokifute@elmatnov.ir', '11921', GETDATE(), GETDATE()),
  ('Harry French', 'koanav@cucopno.ci', '1114', GETDATE(), GETDATE());

DROP TABLE [dbo].[users];

