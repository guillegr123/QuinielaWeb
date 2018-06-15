CREATE TABLE [dbo].[Participante]
(
	[IdParticipante] INT NOT NULL PRIMARY KEY, 
    [Alias] VARCHAR(100) NOT NULL, 
    [Contrasena] VARCHAR(1000) NULL, 
    [CodigoEquipoFav] CHAR(3) NOT NULL
)
