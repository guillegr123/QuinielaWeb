CREATE PROCEDURE [dbo].[StpPuntuaciones]
AS
BEGIN
	SELECT
		PA.Alias                    Participante,
		SUM(CALC.MarcadorAcertado)  MarcadoresAcertados,
		SUM(CALC.ResultadoAcertado) ResultadosAcertados,
		SUM(((CALC.MarcadorAcertado * 2) + CALC.ResultadoAcertado) * CALC.MultiplicadorFav) Puntos,
		PA.CodigoEquipoFav			CodigoEquipoFav
	FROM dbo.Participante PA
		INNER JOIN dbo.Pronostico PR
			ON PA.IdParticipante = PR.IdParticipante
		INNER JOIN dbo.Partido PT
			ON PR.IdPartido = PT.IdPartido
		CROSS APPLY (
			SELECT
				CASE
					WHEN PR.Goles1 = PT.Goles1 AND PR.Goles2 = PT.Goles2 THEN 1
					ELSE 0
				END AS MarcadorAcertado,
				CASE
					WHEN SIGN(PR.Goles1 - PR.Goles2) = SIGN(PT.Goles1 - PT.Goles2) THEN 1
					ELSE 0
				END AS ResultadoAcertado,
				CASE
					WHEN PA.CodigoEquipoFav IN (PT.Codigo1, PT.Codigo2) THEN 2
					ELSE 1
				END AS MultiplicadorFav
		) AS CALC
	WHERE PT.FechaHoraFin < GETUTCDATE()
	GROUP BY PA.Alias, PA.CodigoEquipoFav
	ORDER BY 4 DESC;

	RETURN 0;
END
