CREATE TABLE [dbo].[Partido]
(
	[IdPartido] INT NOT NULL PRIMARY KEY, 
    [Codigo1] CHAR(3) NULL, 
    [Codigo2] CHAR(3) NULL, 
    [Equipo1] VARCHAR(100) NULL, 
    [Equipo2] VARCHAR(100) NULL, 
    [Goles1] INT NULL, 
    [Goles2] INT NULL, 
    [FechaHoraInicio] DATETIME NULL, 
    [FechaHoraFin] DATETIME NULL, 
    [Lugar] VARCHAR(100) NULL, 
    [EtapaNivel1] VARCHAR(20) NOT NULL DEFAULT '',
    [EtapaNivel2] VARCHAR(20) NOT NULL DEFAULT '', 
    [EtapaNivel3] VARCHAR(20) NOT NULL DEFAULT ''
)
