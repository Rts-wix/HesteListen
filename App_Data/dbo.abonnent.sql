CREATE TABLE [dbo].[abonnent] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [DatoTilmeldt] DATE          DEFAULT (getdate()) NOT NULL,
    [Navn]         NVARCHAR (50) NULL,
    [Email]        NVARCHAR (50) NULL,
    [Telefon]      NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

