using ServiceStack.ServiceHost;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QW.Services.Models.PartidoParticipante
{
    //public class PartidoParticipanteResponse
    //{
    //    public PartidoParticipante Partido { get; set; }
    //}

    public class PartidosParticipanteResponse
    {
        public IList<EtapaPartido> Etapas { get; set; }
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
                return Finalizado && Goles1 == GolesPronostico1 && Goles2 == GolesPronostico2;
            }
        }
        public bool ResultadoAcertado
        {
            get
            {
                return
                    Finalizado
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

    public class EtapaPartido
    {
        public int NumEtapa { set; get; }
        public string NombreEtapa { set; get; }
        public bool Activa { set; get; }
        public IList<PartidoParticipante> Partidos { get; set; }

        public EtapaPartido()
        {
            Partidos = new List<PartidoParticipante>();
        }
    }

    [Api("Get all pronosticos for participante.")]
    [Route("/participante/pronosticos", "GET, OPTIONS")]
    public class PartidosParticipante : IReturn<PartidosParticipanteResponse>
    {
        //public int? IdParticipante { get; set; }
    }
}