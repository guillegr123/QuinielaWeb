using NHibernate;
using NHibernate.Transform;
using QW.Data.Entities;
using QW.Services.Models.EstadisticasModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QW.Services.Interfaces
{
    public class EstadisticasService : QwNhServiceBase
    {
        public EstadisticasService(ISession qwNhSession)
            : base(qwNhSession)
        {
        }

        public object Get(Estadisticas est)
        {
            Resumen resumen = new Resumen() { CantidadParticipantes = QwNhSession.QueryOver<Participante>().RowCount() };
            IList<ParticipantePuntaje> puntajes
                = QwNhSession.CreateSQLQuery("EXEC dbo.StpPuntuaciones")
                    .SetResultTransformer(PuntajesTransformer.Transformer)
                    .List<ParticipantePuntaje>()
                    .OrderByDescending(x => x.Puntos).ThenBy(x => x.Participante)
                    .ToList();

            int puntosActuales = -1;
            int posActual = 1;
            int contPos = 1;
            foreach (var p in puntajes)
            {
                if (p.Puntos != puntosActuales)
                {
                    puntosActuales = p.Puntos;
                    posActual = contPos;
                }
                p.Posicion = posActual;
                contPos++;
            }

            return new EstadisticasResponse()
            {
                Resumen = resumen,
                Puntajes = puntajes
            };
        }

        class PuntajesTransformer : IResultTransformer
        {
            private static PuntajesTransformer _Transformer;
            internal static PuntajesTransformer Transformer
            {
                get
                {
                    if (_Transformer == null)
                    {
                        _Transformer = new PuntajesTransformer();
                    }
                    return _Transformer;
                }
            }

            public System.Collections.IList TransformList(System.Collections.IList collection)
            {
                return collection;
            }

            public object TransformTuple(object[] tuple, string[] aliases)
            {
                return new ParticipantePuntaje()
                {
                    Participante = (string)tuple[0],
                    MarcadoresAcertados = (int)tuple[1],
                    ResultadosAcertados = (int)tuple[2],
                    Puntos = (int)tuple[3]
                };
            }
        }
    }
}