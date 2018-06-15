USE [DBQWTest]
GO
INSERT [dbo].[Etapa] ([IdEtapa], [Nombre]) VALUES (1, N'Grupo A')
GO
INSERT [dbo].[Etapa] ([IdEtapa], [Nombre]) VALUES (2, N'Grupo B')
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (1, N'RUS', N'SAU', N'Rusia', N'Arabia Saudita', 5, 0, CAST(N'2018-06-14 09:00:00.000' AS DateTime), CAST(N'2018-06-14 11:00:00.000' AS DateTime), N'Estadio Luzhniki, Moscú', 1)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (2, N'EGY', N'URY', N'Egipto', N'Uruguay', NULL, NULL, CAST(N'2018-06-15 06:00:00.000' AS DateTime), CAST(N'2018-06-15 08:00:00.000' AS DateTime), N'X', 1)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (3, N'MAR', N'IRN', N'Marruecos', N'República Islámica de Irán', NULL, NULL, CAST(N'2018-06-15 09:00:00.000' AS DateTime), CAST(N'2018-06-15 11:00:00.000' AS DateTime), N'X', 2)
GO
INSERT [dbo].[Partido] ([IdPartido], [Codigo1], [Codigo2], [Equipo1], [Equipo2], [Goles1], [Goles2], [FechaHoraInicio], [FechaHoraFin], [Lugar], [IdEtapa]) VALUES (4, N'PRT', N'ESP', N'Portugal', N'España', NULL, NULL, CAST(N'2018-06-15 12:00:00.000' AS DateTime), CAST(N'2018-06-15 14:00:00.000' AS DateTime), N'X', 2)
GO
