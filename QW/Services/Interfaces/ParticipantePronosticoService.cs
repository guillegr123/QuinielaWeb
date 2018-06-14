using NHibernate;
using QW.Services.Models.ParticipantePronostico;
using QW.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ServiceStack.Common;
using ServiceStack.Common.Web;
using System.Net;

namespace QW.Services.Interfaces
{
    public class ParticipantePronosticoService : QwNhServiceBase
    {
        public ParticipantePronosticoService(ISession qwNhSession)
            : base(qwNhSession)
        {
        }

        public object Post(ParticipantePronostico ppronostico)
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

            Partido partido = QwNhSession.Get<Partido>(ppronostico.IdPartido);
            if (partido == null)
            {
                throw new ArgumentException("ID de partido inválido.");
            }
            if (partido.Iniciado)
            {
                throw new UnauthorizedAccessException("El partido ya ha iniciado. No puede modificar su pronóstico");
            }

            Pronostico pronostico = QwNhSession.QueryOver<Pronostico>().Where(x => x.PartidoPronostico.IdPartido == ppronostico.IdPartido && x.ParticipantePronostico.IdParticipante == idParticipante).SingleOrDefault();
            if (pronostico == null)
            {
                Participante participante = new Participante();
                QwNhSession.Load(participante, idParticipante);
                pronostico = new Pronostico()
                {
                    ParticipantePronostico = participante,
                    PartidoPronostico = partido
                };
            }

            pronostico.Goles1 = ppronostico.Goles1;
            pronostico.Goles2 = ppronostico.Goles2;
            QwNhSession.SaveOrUpdate(pronostico);
            QwNhSession.Transaction.Commit();

            var ppronosticoResponse = new PronosticoResponse()
            {
                Pronostico = ppronostico
            };

            return new HttpResult(ppronosticoResponse)
            {
                StatusCode = HttpStatusCode.Created,
                Headers = {
                    {HttpHeaders.Location, base.Request.AbsoluteUri.CombineWith(ppronosticoResponse.Pronostico.IdPartido)}
                }
            };
        }
    }
}