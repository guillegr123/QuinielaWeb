using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QW.Services.Dtos
{
    public class EtapaPartidoPronostico
    {
        public int IdPartido { get; set; }
        public int NumEtapa { set; get; }
        public string Etapa { get; set; }
        public string Codigo1 { get; set; }
        public string Equipo1 { get; set; }
        public string Codigo2 { get; set; }
        public string Equipo2 { get; set; }
        public int? Goles1 { get; set; }
        public int? Goles2 { get; set; }
        public int? GolesPronostico1 { get; set; }
        public int? GolesPronostico2 { get; set; }
        public DateTime FechaHoraInicio { set; get; }
        public DateTime FechaHoraFin { get; set; }
        public string Lugar { get; set; }
        public short NumJornada { get; set; }
        public string Fase { get; set; }
    }
}