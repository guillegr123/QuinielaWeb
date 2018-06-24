USE [DBQWTest]
GO
INSERT [dbo].[Etapa] ([IdEtapa], [Nombre]) VALUES (1, N'Grupo A')
GO
INSERT [dbo].[Etapa] ([IdEtapa], [Nombre]) VALUES (2, N'Grupo B')
GO
INSERT [dbo].[Etapa] ([IdEtapa], [Nombre]) VALUES (3, N'Grupo C')
GO
INSERT [dbo].[Etapa] ([IdEtapa], [Nombre]) VALUES (4, N'Grupo D')
GO
INSERT [dbo].[Etapa] ([IdEtapa], [Nombre]) VALUES (5, N'Grupo E')
GO
INSERT [dbo].[Etapa] ([IdEtapa], [Nombre]) VALUES (6, N'Grupo F')
GO
INSERT [dbo].[Etapa] ([IdEtapa], [Nombre]) VALUES (7, N'Grupo G')
GO
INSERT [dbo].[Etapa] ([IdEtapa], [Nombre]) VALUES (8, N'Grupo H')
GO
INSERT [dbo].[Participante] ([IdParticipante], [Alias], [Contrasena], [CodigoEquipoFav])
VALUES (1, N'test', NULL, N'ESP')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (1, N'RUS', N'SAU', N'Rusia', N'Arabia Saudita', NULL, NULL, CAST(N'2018-06-14 15:00:00.000' AS DateTime), CAST(N'2018-06-14 17:00:00.000' AS DateTime), N'Estadio Luzhniki, Moscú', 'Grupos', 1, 1)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (2, N'EGY', N'URY', N'Egipto', N'Uruguay', NULL, NULL, CAST(N'2018-06-15 12:00:00.000' AS DateTime), CAST(N'2018-06-15 14:00:00.000' AS DateTime), N'Ekaterimburgo Arena, Ekaterimburgo', 'Grupos', 1, 1)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (3, N'MAR', N'IRN', N'Marruecos', N'República Islámica de Irán', NULL, NULL, CAST(N'2018-06-15 15:00:00.000' AS DateTime), CAST(N'2018-06-15 17:00:00.000' AS DateTime), N'Estadio Krestovski, San Petersburgo', 'Grupos', 1, 2)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (4, N'PRT', N'ESP', N'Portugal', N'España', NULL, NULL, CAST(N'2018-06-15 18:00:00.000' AS DateTime), CAST(N'2018-06-15 19:54:05.563' AS DateTime), N'Estadio Fisht, Sochi', 'Grupos', 1, 2)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (5, N'FRA', N'AUS', N'Francia', N'Australia', NULL, NULL, CAST(N'2018-06-16 10:00:00.000' AS DateTime), CAST(N'2018-06-16 12:00:00.000' AS DateTime), N'Kazán Arena, Kazán', 'Grupos', 1, 3)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (6, N'ARG', N'ISL', N'Argentina', N'Islandia', NULL, NULL, CAST(N'2018-06-16 13:00:00.000' AS DateTime), CAST(N'2018-06-16 15:00:00.000' AS DateTime), N'Otkrytie Arena (Estadio Spartak), Moscú', 'Grupos', 1, 4)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (7, N'PER', N'DNK', N'Perú', N'Dinamarca', NULL, NULL, CAST(N'2018-06-16 16:00:00.000' AS DateTime), CAST(N'2018-06-16 18:00:00.000' AS DateTime), N'Mordovia Arena, Saransk', 'Grupos', 1, 3)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (8, N'HRV', N'NGA', N'Croacia', N'Nigeria', NULL, NULL, CAST(N'2018-06-16 19:00:00.000' AS DateTime), CAST(N'2018-06-16 21:00:00.000' AS DateTime), N'Arena Baltika, Kaliningrado', 'Grupos', 1, 4)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (9, N'CRI', N'SRB', N'Costa Rica', N'Serbia', NULL, NULL, CAST(N'2018-06-17 12:00:00.000' AS DateTime), CAST(N'2018-06-17 14:00:00.000' AS DateTime), N'Cosmos Arena, Samara', 'Grupos', 1, 5)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (10, N'DEU', N'MEX', N'Alemania', N'México', NULL, NULL, CAST(N'2018-06-17 15:00:00.000' AS DateTime), CAST(N'2018-06-17 17:00:00.000' AS DateTime), N'Estadio Luzhniki, Moscú', 'Grupos', 1, 6)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (11, N'BRA', N'CHE', N'Brasil', N'Suiza', NULL, NULL, CAST(N'2018-06-17 18:00:00.000' AS DateTime), CAST(N'2018-06-17 20:00:00.000' AS DateTime), N'Rostov Arena, Rostov del Don', 'Grupos', 1, 5)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (12, N'SWE', N'KOR', N'Suecia', N'Corea del Sur', NULL, NULL, CAST(N'2018-06-18 12:00:00.000' AS DateTime), CAST(N'2018-06-18 14:00:00.000' AS DateTime), N'Estadio de Nizhni Nóvgorod, Nizhni Nóvgorod', 'Grupos', 1, 6)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (13, N'BEL', N'PAN', N'Bélgica', N'Panamá', NULL, NULL, CAST(N'2018-06-18 15:00:00.000' AS DateTime), CAST(N'2018-06-18 17:00:00.000' AS DateTime), N'Estadio Fisht, Sochi', 'Grupos', 1, 7)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (14, N'TUN', N'ENG', N'Túnez', N'Inglaterra', NULL, NULL, CAST(N'2018-06-18 18:00:00.000' AS DateTime), CAST(N'2018-06-18 19:54:40.447' AS DateTime), N'Volgogrado Arena, Volgogrado', 'Grupos', 1, 7)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (15, N'COL', N'JPN', N'Colombia', N'Japón', NULL, NULL, CAST(N'2018-06-19 12:00:00.000' AS DateTime), CAST(N'2018-06-19 14:00:00.000' AS DateTime), N'Mordovia Arena, Saransk', 'Grupos', 1, 8)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (16, N'POL', N'SEN', N'Polonia', N'Senegal', NULL, NULL, CAST(N'2018-06-19 15:00:00.000' AS DateTime), CAST(N'2018-06-19 16:55:47.287' AS DateTime), N'Otkrytie Arena (Estadio Spartak), Moscú', 'Grupos', 1, 8)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (17, N'RUS', N'EGY', N'Rusia', N'Egipto', NULL, NULL, CAST(N'2018-06-19 18:00:00.000' AS DateTime), CAST(N'2018-06-19 19:52:27.717' AS DateTime), N'Estadio Krestovski, San Petersburgo', 'Grupos', 2, 1)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (18, N'PRT', N'MAR', N'Portugal', N'Marruecos', NULL, NULL, CAST(N'2018-06-20 12:00:00.000' AS DateTime), CAST(N'2018-06-20 14:00:00.000' AS DateTime), N'Estadio Luzhniki, Moscú', 'Grupos', 2, 2)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (19, N'URY', N'SAU', N'Uruguay', N'Arabia Saudita', NULL, NULL, CAST(N'2018-06-20 15:00:00.000' AS DateTime), CAST(N'2018-06-20 16:52:56.013' AS DateTime), N'Rostov Arena, Rostov del Don', 'Grupos', 2, 1)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (20, N'IRN', N'ESP', N'República Islámica de Irán', N'España', NULL, NULL, CAST(N'2018-06-20 18:00:00.000' AS DateTime), CAST(N'2018-06-20 20:00:00.000' AS DateTime), N'Kazán Arena, Kazán', 'Grupos', 2, 2)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (21, N'DNK', N'AUS', N'Dinamarca', N'Australia', NULL, NULL, CAST(N'2018-06-21 12:00:00.000' AS DateTime), CAST(N'2018-06-21 14:00:00.000' AS DateTime), N'Cosmos Arena, Samara', 'Grupos', 2, 3)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (22, N'FRA', N'PER', N'Francia', N'Perú', NULL, NULL, CAST(N'2018-06-21 15:00:00.000' AS DateTime), CAST(N'2018-06-21 17:00:00.000' AS DateTime), N'Ekaterimburgo Arena, Ekaterimburgo', 'Grupos', 2, 3)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (23, N'ARG', N'HRV', N'Argentina', N'Croacia', NULL, NULL, CAST(N'2018-06-21 18:00:00.000' AS DateTime), CAST(N'2018-06-21 19:56:39.417' AS DateTime), N'Estadio de Nizhni Nóvgorod, Nizhni Nóvgorod', 'Grupos', 2, 4)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (24, N'BRA', N'CRI', N'Brasil', N'Costa Rica', NULL, NULL, CAST(N'2018-06-22 12:00:00.000' AS DateTime), CAST(N'2018-06-22 14:00:00.000' AS DateTime), N'Estadio Krestovski, San Petersburgo', 'Grupos', 2, 5)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (25, N'NGA', N'ISL', N'Nigeria', N'Islandia', NULL, NULL, CAST(N'2018-06-22 15:00:00.000' AS DateTime), CAST(N'2018-06-22 16:56:31.717' AS DateTime), N'Volgogrado Arena, Volgogrado', 'Grupos', 2, 4)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (26, N'SRB', N'CHE', N'Serbia', N'Suiza', NULL, NULL, CAST(N'2018-06-22 18:00:00.000' AS DateTime), CAST(N'2018-06-22 19:54:14.980' AS DateTime), N'Arena Baltika, Kaliningrado', 'Grupos', 2, 5)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (27, N'BEL', N'TUN', N'Bélgica', N'Túnez', NULL, NULL, CAST(N'2018-06-23 12:00:00.000' AS DateTime), CAST(N'2018-06-23 14:00:00.000' AS DateTime), N'Otkrytie Arena (Estadio Spartak), Moscú', 'Grupos', 2, 7)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (28, N'KOR', N'MEX', N'Corea del Sur', N'México', NULL, NULL, CAST(N'2018-06-23 15:00:00.000' AS DateTime), CAST(N'2018-06-23 17:00:00.000' AS DateTime), N'Rostov Arena, Rostov del Don', 'Grupos', 2, 6)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (29, N'DEU', N'SWE', N'Alemania', N'Suecia', NULL, NULL, CAST(N'2018-06-23 18:00:00.000' AS DateTime), CAST(N'2018-06-23 20:00:00.000' AS DateTime), N'Estadio Fisht, Sochi', 'Grupos', 2, 6)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (30, N'ENG', N'PAN', N'Inglaterra', N'Panamá', NULL, NULL, CAST(N'2018-06-24 12:00:00.000' AS DateTime), CAST(N'2018-06-24 14:00:00.000' AS DateTime), N'Estadio de Nizhni Nóvgorod, Nizhni Nóvgorod', 'Grupos', 2, 7)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (31, N'JPN', N'SEN', N'Japón', N'Senegal', NULL, NULL, CAST(N'2018-06-24 15:00:00.000' AS DateTime), CAST(N'2018-06-24 17:00:00.000' AS DateTime), N'Ekaterimburgo Arena, Ekaterimburgo', 'Grupos', 2, 8)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (32, N'POL', N'COL', N'Polonia', N'Colombia', NULL, NULL, CAST(N'2018-06-24 18:00:00.000' AS DateTime), CAST(N'2018-06-24 20:00:00.000' AS DateTime), N'Kazán Arena, Kazán', 'Grupos', 2, 8)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (33, N'SAU', N'EGY', N'Arabia Saudita', N'Egipto', NULL, NULL, CAST(N'2018-06-25 14:00:00.000' AS DateTime), CAST(N'2018-06-25 16:00:00.000' AS DateTime), N'Volgogrado Arena, Volgogrado', 'Grupos', 3, 1)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (34, N'URY', N'RUS', N'Uruguay', N'Rusia', NULL, NULL, CAST(N'2018-06-25 14:00:00.000' AS DateTime), CAST(N'2018-06-25 16:00:00.000' AS DateTime), N'Cosmos Arena, Samara', 'Grupos', 3, 1)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (35, N'IRN', N'PRT', N'República Islámica de Irán', N'Portugal', NULL, NULL, CAST(N'2018-06-25 18:00:00.000' AS DateTime), CAST(N'2018-06-25 20:00:00.000' AS DateTime), N'Mordovia Arena, Saransk', 'Grupos', 3, 2)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [Fase], [NumJornada], [IdEtapa])
VALUES (36, N'ESP', N'MAR', N'España', N'Marruecos', NULL, NULL, CAST(N'2018-06-25 18:00:00.000' AS DateTime), CAST(N'2018-06-25 20:00:00.000' AS DateTime), N'Arena Baltika, Kaliningrado', 'Grupos', 3, 2)
GO
