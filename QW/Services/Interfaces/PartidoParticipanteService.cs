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
            var query
                = QwNhSession.QueryOver<Partido>()
                    .Left.JoinAlias(x => x.PronosticosPartidos, () => pronostico, x => x.ParticipantePronostico.IdParticipante == idParticipante)
                    .Left.JoinAlias(y => pronostico.ParticipantePronostico, () => participante, x => x.IdParticipante == idParticipante)
                    //.Where(x => participante.IdParticipante == null || participante.IdParticipante == idParticipante)
                    .Where(x => x.EtapaNivel1 == partidosParticipante.EtapaNivel1)
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
                        .Select(x => x.FechaHoraInicio).WithAlias(() => pp.FechaHoraInicio)
                        .Select(x => x.FechaHoraFin).WithAlias(() => pp.FechaHoraFin)
                        .Select(x => x.Lugar).WithAlias(() => pp.Lugar)
                        .Select(x => x.EtapaNivel1).WithAlias(() => pp.EtapaNivel1)
                        .Select(x => x.EtapaNivel2).WithAlias(() => pp.EtapaNivel2)
                        .Select(x => x.EtapaNivel3).WithAlias(() => pp.EtapaNivel3)
                        )
                    .OrderBy(x => x.FechaHoraInicio).Asc
                    .TransformUsing(Transformers.AliasToBean<EtapaPartidoPronostico>());

            return new PartidosParticipanteResponse
            {
                Etapas
                    = query.List<EtapaPartidoPronostico>()
                        .GroupBy(x => x.EtapaNivel2)
                        .Select(x => new Etapa
                        {
                            Nombre = x.Key,
                            SubEtapas
                                = x.GroupBy(y => y.EtapaNivel3)
                                    .Select(y => new Etapa
                                    {
                                        Nombre = y.Key,
                                        Partidos = y.Select(z => new PartidoParticipante
                                        {
                                            IdPartido = z.IdPartido,
                                            Codigo1 = z.Codigo1,
                                            Codigo2 = z.Codigo2,
                                            Equipo1 = z.Equipo1,
                                            Equipo2 = z.Equipo2,
                                            Goles1 = z.Goles1,
                                            Goles2 = z.Goles2,
                                            GolesPronostico1 = z.GolesPronostico1,
                                            GolesPronostico2 = z.GolesPronostico2,
                                            FechaHoraInicio = z.FechaHoraInicio,
                                            Lugar = z.Lugar,
                                            Iniciado = Partido.PartidoIniciado(z.FechaHoraInicio),
                                            Finalizado = DateTime.Now.Subtract(z.FechaHoraFin).TotalMinutes > 0
                                        }).ToList()
                                    }).ToList()
                        }).ToList()
            };
        }
    }
}