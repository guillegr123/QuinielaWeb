using ServiceStack.ServiceHost;
using System;
using System.Collections.Generic;

namespace QW.Services.Models.PartidoParticipante
{
    //public class PartidoParticipanteResponse
    //{
    //    public PartidoParticipante Partido { get; set; }
    //}

    public class PartidosParticipanteResponse
    {
        public IList<Etapa> Etapas { get; set; }
    }

    public class Etapa
    {
        public string Nombre { set; get; }
        public IList<Etapa> SubEtapas { set; get; }
        public IList<PartidoParticipante> Partidos { set; get; }
    }

    /// <summary>
    /// Define ServiceStack web service partidoparticipante request (i.e. Request DTO).
    /// </summary>
    /// <remarks>The route is defined here rather than in the AppHost.</remarks>
    //[Api("GET a single partido by Id.")]
    //[Route("/participante/partidos/{IdPartido}")]
    public class PartidoParticipante //: IReturn<PartidoParticipanteResponse>
    {
        public int IdPartido { get; set; }
        public string Codigo1 { get; set; }
        public string Equipo1 { get; set; }
        public string Codigo2 { get; set; }
        public string Equipo2 { get; set; }
        public int? Goles1 { get; set; }
        public int? Goles2 { get; set; }
        public int? GolesPronostico1 { get; set; }
        public int? GolesPronostico2 { get; set; }
        public bool Definido
        {
            get
            {
                return Codigo1 != null && Codigo2 != null;
            }
        }
        public bool MarcadorAcertado
        {
            get
            {
                return
                    Finalizado
                    && GolesPronostico1 != null
                    && GolesPronostico2 != null
                    && Goles1 == GolesPronostico1 && Goles2 == GolesPronostico2;
            }
        }
        public bool ResultadoAcertado
        {
            get
            {
                return
                    Finalizado
                    && GolesPronostico1 != null
                    && GolesPronostico2 != null
                    && (
                        (Goles1 > Goles2 && GolesPronostico1 > GolesPronostico2)
                        ||
                        (Goles1 == Goles2 && GolesPronostico1 == GolesPronostico2)
                        ||
                        (Goles1 < Goles2 && GolesPronostico1 < GolesPronostico2)
                    );
            }
        }
        public bool Iniciado { set; get; }
        public bool Finalizado { set; get; }
        public DateTime FechaHoraInicio { set; get; }
        public string Lugar { set; get; }
    }

    [Api("Get all pronosticos for participante.")]
    [Route("/participante/pronosticos/{EtapaNivel1}", "GET, OPTIONS")]
    public class PartidosParticipante : IReturn<PartidosParticipanteResponse>
    {
        public string EtapaNivel1 { get; set; }
    }
}