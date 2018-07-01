using ServiceStack.ServiceHost;
using System;
using System.Collections.Generic;

namespace QW.Services.Models.EstadisticasModels
{
    public class ParticipantePuntaje
    {
        public int Posicion { set; get; }
        public string Participante { set; get; }
        public int MarcadoresAcertados { set; get; }
        public int ResultadosAcertados { set; get; }
        public int Puntos { set; get; }
        public string CodigoEquipoFav { set; get; }
    }

    public class Resumen
    {
        public int CantidadParticipantes { set; get; }
        public string Premio1
        {
            get
            {
                return Convert.ToDecimal((CantidadParticipantes * 2) * 0.5).ToString("F") + " USD";
            }
        }
        public string Premio2
        {
            get
            {
                return Convert.ToDecimal((CantidadParticipantes * 2) * 0.3).ToString("F") + " USD";
            }
        }
        public string Premio3
        {
            get
            {
                return Convert.ToDecimal((CantidadParticipantes * 2) * 0.2).ToString("F") + " USD";
            }
        }
    }

    public class EstadisticasResponse
    {
        public Resumen Resumen { set;  get; }
        public IList<ParticipantePuntaje> Puntajes { set; get; }
    }

    [Api("Get all pronosticos for participante.")]
    [Route("/puntajes", "GET, OPTIONS")]
    public class Estadisticas : IReturn<EstadisticasResponse>
    {
    }
}