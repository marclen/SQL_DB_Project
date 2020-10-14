CREATE TABLE [dbo].[Persons] (
    [person_ID] INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (50) NULL,
    [LastName]  NVARCHAR (50) NULL,
    [Phone]     NVARCHAR (10) NULL,
    [Email]     NVARCHAR (50) NULL,
    CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED ([person_ID] ASC)
);

