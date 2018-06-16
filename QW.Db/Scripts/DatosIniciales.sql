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
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (1, N'RUS', N'SAU', N'Rusia', N'Arabia Saudita', NULL, NULL, CAST(N'2018-06-14 15:00:00.000' AS DateTime), CAST(N'2018-06-14 17:00:00.000' AS DateTime), N'Estadio Luzhniki, Moscú', 1)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (2, N'EGY', N'URY', N'Egipto', N'Uruguay', NULL, NULL, CAST(N'2018-06-15 12:00:00.000' AS DateTime), CAST(N'2018-06-15 14:00:00.000' AS DateTime), N'Ekaterimburgo Arena, Ekaterimburgo', 1)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (3, N'MAR', N'IRN', N'Marruecos', N'República Islámica de Irán', NULL, NULL, CAST(N'2018-06-15 15:00:00.000' AS DateTime), CAST(N'2018-06-15 17:00:00.000' AS DateTime), N'Estadio Krestovski, San Petersburgo', 2)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (4, N'PRT', N'ESP', N'Portugal', N'España', NULL, NULL, CAST(N'2018-06-15 18:00:00.000' AS DateTime), CAST(N'2018-06-15 19:54:05.563' AS DateTime), N'Estadio Fisht, Sochi', 2)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (5, N'FRA', N'AUS', N'Francia', N'Australia', NULL, NULL, CAST(N'2018-06-16 10:00:00.000' AS DateTime), CAST(N'2018-06-16 12:00:00.000' AS DateTime), N'Kazán Arena, Kazán', 3)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (6, N'ARG', N'ISL', N'Argentina', N'Islandia', NULL, NULL, CAST(N'2018-06-16 13:00:00.000' AS DateTime), CAST(N'2018-06-16 15:00:00.000' AS DateTime), N'Otkrytie Arena (Estadio Spartak), Moscú', 4)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (7, N'PER', N'DNK', N'Perú', N'Dinamarca', NULL, NULL, CAST(N'2018-06-16 16:00:00.000' AS DateTime), CAST(N'2018-06-16 18:00:00.000' AS DateTime), N'Mordovia Arena, Saransk', 3)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (8, N'HRV', N'NGA', N'Croacia', N'Nigeria', NULL, NULL, CAST(N'2018-06-16 19:00:00.000' AS DateTime), CAST(N'2018-06-16 21:00:00.000' AS DateTime), N'Arena Baltika, Kaliningrado', 4)
GO
