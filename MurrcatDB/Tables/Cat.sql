CREATE TABLE [dbo].[Cat]
(
	[Id] VARCHAR(20) NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL UNIQUE CHECK (LEN([Name]) > 1), 
    [CutenessSum] REAL NOT NULL DEFAULT 0, 
    [VotesCount] INT NOT NULL DEFAULT 0, 
    [Price] DECIMAL(12, 2) NOT NULL, 
    [OldPrice] DECIMAL(12, 2) NULL, 
    [Description] NTEXT NULL, 
    [Owner] INT NOT NULL FOREIGN KEY REFERENCES Owner(Id)
)
