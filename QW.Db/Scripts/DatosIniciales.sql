USE [DBQWTest]
GO
INSERT [dbo].[Participante] ([IdParticipante], [Alias], [Contrasena], [CodigoEquipoFav])
VALUES (1, N'test', NULL, N'ESP')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (1, N'RUS', N'SAU', N'Rusia', N'Arabia Saudita', 5, 0, CAST(N'2018-06-14 15:00:00.000' AS DateTime), CAST(N'2018-06-14 17:00:00.000' AS DateTime), N'Estadio Luzhniki, Moscú', 'Grupos', 'Jornada 1', 'Grupo A')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (2, N'EGY', N'URY', N'Egipto', N'Uruguay', 0, 1, CAST(N'2018-06-15 12:00:00.000' AS DateTime), CAST(N'2018-06-15 14:00:00.000' AS DateTime), N'Ekaterimburgo Arena, Ekaterimburgo', 'Grupos', 'Jornada 1', 'Grupo A')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (3, N'MAR', N'IRN', N'Marruecos', N'República Islámica de Irán', 0, 1, CAST(N'2018-06-15 15:00:00.000' AS DateTime), CAST(N'2018-06-15 17:00:00.000' AS DateTime), N'Estadio Krestovski, San Petersburgo', 'Grupos', 'Jornada 1', 'Grupo B')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (4, N'PRT', N'ESP', N'Portugal', N'España', 3, 3, CAST(N'2018-06-15 18:00:00.000' AS DateTime), CAST(N'2018-06-15 19:54:05.563' AS DateTime), N'Estadio Fisht, Sochi', 'Grupos', 'Jornada 1', 'Grupo B')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (5, N'FRA', N'AUS', N'Francia', N'Australia', 2, 1, CAST(N'2018-06-16 10:00:00.000' AS DateTime), CAST(N'2018-06-16 12:00:00.000' AS DateTime), N'Kazán Arena, Kazán', 'Grupos', 'Jornada 1', 'Grupo C')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (6, N'ARG', N'ISL', N'Argentina', N'Islandia', 1, 1, CAST(N'2018-06-16 13:00:00.000' AS DateTime), CAST(N'2018-06-16 15:00:00.000' AS DateTime), N'Otkrytie Arena (Estadio Spartak), Moscú', 'Grupos', 'Jornada 1', 'Grupo D')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (7, N'PER', N'DNK', N'Perú', N'Dinamarca', 0, 1, CAST(N'2018-06-16 16:00:00.000' AS DateTime), CAST(N'2018-06-16 18:00:00.000' AS DateTime), N'Mordovia Arena, Saransk', 'Grupos', 'Jornada 1', 'Grupo C')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (8, N'HRV', N'NGA', N'Croacia', N'Nigeria', 2, 0, CAST(N'2018-06-16 19:00:00.000' AS DateTime), CAST(N'2018-06-16 21:00:00.000' AS DateTime), N'Arena Baltika, Kaliningrado', 'Grupos', 'Jornada 1', 'Grupo D')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (9, N'CRI', N'SRB', N'Costa Rica', N'Serbia', 0, 1, CAST(N'2018-06-17 12:00:00.000' AS DateTime), CAST(N'2018-06-17 14:00:00.000' AS DateTime), N'Cosmos Arena, Samara', 'Grupos', 'Jornada 1', 'Grupo E')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (10, N'DEU', N'MEX', N'Alemania', N'México', 0, 1, CAST(N'2018-06-17 15:00:00.000' AS DateTime), CAST(N'2018-06-17 17:00:00.000' AS DateTime), N'Estadio Luzhniki, Moscú', 'Grupos', 'Jornada 1', 'Grupo F')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (11, N'BRA', N'CHE', N'Brasil', N'Suiza', 1, 1, CAST(N'2018-06-17 18:00:00.000' AS DateTime), CAST(N'2018-06-17 20:00:00.000' AS DateTime), N'Rostov Arena, Rostov del Don', 'Grupos', 'Jornada 1', 'Grupo E')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (12, N'SWE', N'KOR', N'Suecia', N'Corea del Sur', 1, 0, CAST(N'2018-06-18 12:00:00.000' AS DateTime), CAST(N'2018-06-18 14:00:00.000' AS DateTime), N'Estadio de Nizhni Nóvgorod, Nizhni Nóvgorod', 'Grupos', 'Jornada 1', 'Grupo F')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (13, N'BEL', N'PAN', N'Bélgica', N'Panamá', 3, 0, CAST(N'2018-06-18 15:00:00.000' AS DateTime), CAST(N'2018-06-18 17:00:00.000' AS DateTime), N'Estadio Fisht, Sochi', 'Grupos', 'Jornada 1', 'Grupo G')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (14, N'TUN', N'ENG', N'Túnez', N'Inglaterra', 1, 2, CAST(N'2018-06-18 18:00:00.000' AS DateTime), CAST(N'2018-06-18 19:54:40.447' AS DateTime), N'Volgogrado Arena, Volgogrado', 'Grupos', 'Jornada 1', 'Grupo G')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (15, N'COL', N'JPN', N'Colombia', N'Japón', 1, 2, CAST(N'2018-06-19 12:00:00.000' AS DateTime), CAST(N'2018-06-19 14:00:00.000' AS DateTime), N'Mordovia Arena, Saransk', 'Grupos', 'Jornada 1', 'Grupo H')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (16, N'POL', N'SEN', N'Polonia', N'Senegal', 1, 2, CAST(N'2018-06-19 15:00:00.000' AS DateTime), CAST(N'2018-06-19 16:55:47.287' AS DateTime), N'Otkrytie Arena (Estadio Spartak), Moscú', 'Grupos', 'Jornada 1', 'Grupo H')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (17, N'RUS', N'EGY', N'Rusia', N'Egipto', 3, 1, CAST(N'2018-06-19 18:00:00.000' AS DateTime), CAST(N'2018-06-19 19:52:27.717' AS DateTime), N'Estadio Krestovski, San Petersburgo', 'Grupos', 'Jornada 2', 'Grupo A')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (18, N'PRT', N'MAR', N'Portugal', N'Marruecos', 1, 0, CAST(N'2018-06-20 12:00:00.000' AS DateTime), CAST(N'2018-06-20 14:00:00.000' AS DateTime), N'Estadio Luzhniki, Moscú', 'Grupos', 'Jornada 2', 'Grupo B')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (19, N'URY', N'SAU', N'Uruguay', N'Arabia Saudita', 1, 0, CAST(N'2018-06-20 15:00:00.000' AS DateTime), CAST(N'2018-06-20 16:52:56.013' AS DateTime), N'Rostov Arena, Rostov del Don', 'Grupos', 'Jornada 2', 'Grupo A')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (20, N'IRN', N'ESP', N'República Islámica de Irán', N'España', 0, 1, CAST(N'2018-06-20 18:00:00.000' AS DateTime), CAST(N'2018-06-20 20:00:00.000' AS DateTime), N'Kazán Arena, Kazán', 'Grupos', 'Jornada 2', 'Grupo B')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (21, N'DNK', N'AUS', N'Dinamarca', N'Australia', 1, 1, CAST(N'2018-06-21 12:00:00.000' AS DateTime), CAST(N'2018-06-21 14:00:00.000' AS DateTime), N'Cosmos Arena, Samara', 'Grupos', 'Jornada 2', 'Grupo C')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (22, N'FRA', N'PER', N'Francia', N'Perú', 1, 0, CAST(N'2018-06-21 15:00:00.000' AS DateTime), CAST(N'2018-06-21 17:00:00.000' AS DateTime), N'Ekaterimburgo Arena, Ekaterimburgo', 'Grupos', 'Jornada 2', 'Grupo C')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (23, N'ARG', N'HRV', N'Argentina', N'Croacia', 0, 3, CAST(N'2018-06-21 18:00:00.000' AS DateTime), CAST(N'2018-06-21 19:56:39.417' AS DateTime), N'Estadio de Nizhni Nóvgorod, Nizhni Nóvgorod', 'Grupos', 'Jornada 2', 'Grupo D')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (24, N'BRA', N'CRI', N'Brasil', N'Costa Rica', 2, 0, CAST(N'2018-06-22 12:00:00.000' AS DateTime), CAST(N'2018-06-22 14:00:00.000' AS DateTime), N'Estadio Krestovski, San Petersburgo', 'Grupos', 'Jornada 2', 'Grupo E')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (25, N'NGA', N'ISL', N'Nigeria', N'Islandia', 2, 0, CAST(N'2018-06-22 15:00:00.000' AS DateTime), CAST(N'2018-06-22 16:56:31.717' AS DateTime), N'Volgogrado Arena, Volgogrado', 'Grupos', 'Jornada 2', 'Grupo D')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (26, N'SRB', N'CHE', N'Serbia', N'Suiza', 1, 2, CAST(N'2018-06-22 18:00:00.000' AS DateTime), CAST(N'2018-06-22 19:54:14.980' AS DateTime), N'Arena Baltika, Kaliningrado', 'Grupos', 'Jornada 2', 'Grupo E')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (27, N'BEL', N'TUN', N'Bélgica', N'Túnez', 5, 2, CAST(N'2018-06-23 12:00:00.000' AS DateTime), CAST(N'2018-06-23 14:00:00.000' AS DateTime), N'Otkrytie Arena (Estadio Spartak), Moscú', 'Grupos', 'Jornada 2', 'Grupo G')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (28, N'KOR', N'MEX', N'Corea del Sur', N'México', 1, 2, CAST(N'2018-06-23 15:00:00.000' AS DateTime), CAST(N'2018-06-23 17:00:00.000' AS DateTime), N'Rostov Arena, Rostov del Don', 'Grupos', 'Jornada 2', 'Grupo F')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (29, N'DEU', N'SWE', N'Alemania', N'Suecia', 2, 1, CAST(N'2018-06-23 18:00:00.000' AS DateTime), CAST(N'2018-06-23 20:00:00.000' AS DateTime), N'Estadio Fisht, Sochi', 'Grupos', 'Jornada 2', 'Grupo F')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (30, N'ENG', N'PAN', N'Inglaterra', N'Panamá', 6, 1, CAST(N'2018-06-24 12:00:00.000' AS DateTime), CAST(N'2018-06-24 14:00:00.000' AS DateTime), N'Estadio de Nizhni Nóvgorod, Nizhni Nóvgorod', 'Grupos', 'Jornada 2', 'Grupo G')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (31, N'JPN', N'SEN', N'Japón', N'Senegal', 2, 2, CAST(N'2018-06-24 15:00:00.000' AS DateTime), CAST(N'2018-06-24 17:00:00.000' AS DateTime), N'Ekaterimburgo Arena, Ekaterimburgo', 'Grupos', 'Jornada 2', 'Grupo H')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (32, N'POL', N'COL', N'Polonia', N'Colombia', 0, 3, CAST(N'2018-06-24 18:00:00.000' AS DateTime), CAST(N'2018-06-24 20:00:00.000' AS DateTime), N'Kazán Arena, Kazán', 'Grupos', 'Jornada 2', 'Grupo H')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (33, N'SAU', N'EGY', N'Arabia Saudita', N'Egipto', 2, 1, CAST(N'2018-06-25 14:00:00.000' AS DateTime), CAST(N'2018-06-25 16:00:00.000' AS DateTime), N'Volgogrado Arena, Volgogrado', 'Grupos', 'Jornada 3', 'Grupo A')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (34, N'URY', N'RUS', N'Uruguay', N'Rusia', 3, 0, CAST(N'2018-06-25 14:00:00.000' AS DateTime), CAST(N'2018-06-25 16:00:00.000' AS DateTime), N'Cosmos Arena, Samara', 'Grupos', 'Jornada 3', 'Grupo A')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (35, N'IRN', N'PRT', N'República Islámica de Irán', N'Portugal', 1, 1, CAST(N'2018-06-25 18:00:00.000' AS DateTime), CAST(N'2018-06-25 20:00:00.000' AS DateTime), N'Mordovia Arena, Saransk', 'Grupos', 'Jornada 3', 'Grupo B')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [EtapaNivel1], [EtapaNivel2], [EtapaNivel3])
VALUES (36, N'ESP', N'MAR', N'España', N'Marruecos', 2, 2, CAST(N'2018-06-25 18:00:00.000' AS DateTime), CAST(N'2018-06-25 20:00:00.000' AS DateTime), N'Arena Baltika, Kaliningrado', 'Grupos', 'Jornada 3', 'Grupo B')
GO
