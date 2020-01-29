CREATE TABLE [dbo].[UserLogins] (
    [Username] NCHAR (50) NOT NULL,
    [Password] NCHAR (50) NOT NULL,
    [Coach] NCHAR(30) NOT NULL, 
    PRIMARY KEY CLUSTERED ([Username] ASC)
);

