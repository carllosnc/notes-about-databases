USE [learn];

CREATE TABLE [dbo].[users]
(
  [id] INT IDENTITY(1,1) NOT NULL,
  [name] VARCHAR(255) NOT NULL,
  [email] VARCHAR(255) NOT NULL,
  [password] VARCHAR(255) NOT NULL,
  [created_at] DATETIME NOT NULL,
  [updated_at] DATETIME NOT NULL,
  PRIMARY KEY ([id])
);

INSERT INTO [dbo].[users]
  ([name], [email], [password], [created_at], [updated_at])
VALUES
  ('Ruth Boyd', 'ku@te.lk', '124', GETDATE(), GETDATE()),
  ('Nora Hudson', 'ade@evrutes.kw', '229', GETDATE(), GETDATE()),
  ('Angel Bush', 'vovfom@resmu.om', '177', GETDATE(), GETDATE()),
  ('Dora Bates', 'nokceuc@cutu.ht', '78', GETDATE(), GETDATE()),
  ('Rose Morton', 'sapefa@ivome.pt', '209', GETDATE(), GETDATE()),
  ('Bernice Figueroa', 'con@ubuka.tn', '45', GETDATE(), GETDATE()),
  ('Eunice Garrett', 'coot@bopew.mt', '193', GETDATE(), GETDATE()),
  ('Sylvia Luna', 'fevu@fem.tf', '27', GETDATE(), GETDATE()),
  ('Alta Dixon', 'gozerioda@aziti.st', '108', GETDATE(), GETDATE()),
  ('Manuel Ross', 'miwfu@azapa.bz', '8', GETDATE(), GETDATE()),
  ('Andrew Higgins', 'zeofawo@zagviizo.ru', '57', GETDATE(), GETDATE()),
  ('Allen Blair', 'hafogmu@felkazbuc.mm', '14', GETDATE(), GETDATE()),
  ('Nancy Adkins', 'per@sip.ps', '90', GETDATE(), GETDATE()),
  ('Lizzie Carpenter', 'sopvegol@ruhdote.mn', '184', GETDATE(), GETDATE()),
  ('Amy Lawrence', 'hazdodojo@ar.bm', '203', GETDATE(), GETDATE()),
  ('Kathryn Silva', 'vohzowlo@jehibac.be', '184', GETDATE(), GETDATE());

SELECT *
FROM [dbo].[users];

SELECT COUNT(*)

DROP TABLE [dbo].[users];
