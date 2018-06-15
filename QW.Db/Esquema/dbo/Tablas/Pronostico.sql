CREATE TABLE [dbo].[Pronostico]
(
	[IdPronostico] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Goles1] INT NOT NULL, 
    [Goles2] NCHAR(10) NOT NULL, 
    [IdParticipante] INT NOT NULL, 
    [IdPartido] INT NOT NULL,
	CONSTRAINT [FK_Pronostico_Participante] FOREIGN KEY ([IdParticipante]) REFERENCES [dbo].[Participante] ([IdParticipante]),
	CONSTRAINT [FK_Pronostico_Partido] FOREIGN KEY ([IdPartido]) REFERENCES [dbo].[Partido] ([IdPartido])
)
