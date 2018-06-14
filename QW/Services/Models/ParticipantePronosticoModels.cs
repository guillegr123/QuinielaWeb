using ServiceStack.ServiceHost;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QW.Services.Models.ParticipantePronostico
{
    public class PronosticoResponse
    {
        public ParticipantePronostico Pronostico { get; set; }
    }

    [Route("/participante/pronosticos", "POST")]
    public class ParticipantePronostico : IReturn<PronosticoResponse>
    {
        public int IdPartido { get; set; }
        public int Goles1 { get; set; }
        public int Goles2 { get; set; }
    }
}