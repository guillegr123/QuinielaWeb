using NHibernate;
using NHibernate.Transform;
using QW.Data.Entities;
using QW.Services.Dtos;
using QW.Services.Models.PartidoParticipante;
using System;
using System.Linq;

namespace QW.Services.Interfaces
{
    public class PartidoParticipanteService : QwNhServiceBase
    {
        public PartidoParticipanteService(ISession qwNhSession)
            : base(qwNhSession)
        {
        }

        /// <summary>
        /// GET /pronosticos
        /// </summary>
        public object Get(PartidosParticipante partidosParticipante)
        {
            int idParticipante;
            try
            {
                idParticipante = this.Session.Get<int>("IdParticipante");
            }
            catch (Exception e)
            {
                throw new UnauthorizedAccessException("El usuario no ha iniciado sesión.", e);
            }
            if (idParticipante == 0)
            {
                throw new UnauthorizedAccessException("El usuario no ha iniciado sesión.");
            }

            EtapaPartidoPronostico pp = null;
            Pronostico pronostico = null;
            Participante participante = null;
            Etapa etapa = null;
            var query
                = QwNhSession.QueryOver<Partido>()
                    .Inner.JoinAlias(x => x.EtapaPartido, () => etapa)
                    .Left.JoinAlias(x => x.PronosticosPartidos, () => pronostico, x => x.ParticipantePronostico.IdParticipante == idParticipante)
                    .Left.JoinAlias(y => pronostico.ParticipantePronostico, () => participante, x => x.IdParticipante == idParticipante)
                    //.Where(x => participante.IdParticipante == null || participante.IdParticipante == idParticipante)
                    .SelectList(list =>list
                        .Select(x => x.Codigo1).WithAlias(() => pp.Codigo1)
                        .Select(x => x.Codigo2).WithAlias(() => pp.Codigo2)
                        .Select(x => x.Equipo1).WithAlias(() => pp.Equipo1)
                        .Select(x => x.Equipo2).WithAlias(() => pp.Equipo2)
                        .Select(x => x.Goles1).WithAlias(() => pp.Goles1)
                        .Select(x => x.Goles2).WithAlias(() => pp.Goles2)
                        .Select(x => x.IdPartido).WithAlias(() => pp.IdPartido)
                        .Select(x => pronostico.Goles1).WithAlias(() => pp.GolesPronostico1)
                        .Select(x => pronostico.Goles2).WithAlias(() => pp.GolesPronostico2)
                        .Select(x => etapa.IdEtapa).WithAlias(() => pp.NumEtapa)
                        .Select(x => etapa.Nombre).WithAlias(() => pp.Etapa)
                        .Select(x => x.FechaHoraInicio).WithAlias(() => pp.FechaHoraInicio)
                        .Select(x => x.FechaHoraFin).WithAlias(() => pp.FechaHoraFin)
                        .Select(x => x.Lugar).WithAlias(() => pp.Lugar)
                        .Select(x => x.NumJornada).WithAlias(() => pp.NumJornada)
                        .Select(x => x.Fase).WithAlias(() => pp.Fase)
                        )
                    .OrderBy(x => x.FechaHoraInicio).Asc
                    .TransformUsing(Transformers.AliasToBean<EtapaPartidoPronostico>());

            return new PartidosParticipanteResponse
            {
                Jornadas
                    = query.List<EtapaPartidoPronostico>().GroupBy(x => x.NumJornada)
                        .Select(x => {
                                JornadaFasePartido ep = new JornadaFasePartido();
                                ep.NumJornada = x.Key;
                                ep.Fase = x.First().Fase;
                                ep.Partidos
                                    = x.OrderBy(y => y.NumEtapa)
                                        .Select(y => new PartidoParticipante()
                                        {
                                            IdPartido = y.IdPartido,
                                            NombreEtapa = y.Etapa,
                                            Codigo1 = y.Codigo1,
                                            Codigo2 = y.Codigo2,
                                            Equipo1 = y.Equipo1,
                                            Equipo2 = y.Equipo2,
                                            Goles1 = y.Goles1,
                                            Goles2 = y.Goles2,
                                            GolesPronostico1 = y.GolesPronostico1,
                                            GolesPronostico2 = y.GolesPronostico2,
                                            FechaHoraInicio = y.FechaHoraInicio,
                                            Lugar = y.Lugar,
                                            Iniciado = Partido.PartidoIniciado(y.FechaHoraInicio),
                                            Finalizado = DateTime.Now.Subtract(y.FechaHoraFin).TotalMinutes > 0
                                        }).ToList();
                                ep.Activa = !ep.Partidos.Any(z => !z.Definido) && ep.Partidos.Any(z => !z.Finalizado);
                                return ep;
                            }).ToList()
            };
        }
    }
}