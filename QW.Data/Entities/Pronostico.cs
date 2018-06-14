using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QW.Data.Entities
{
    public class Pronostico
    {
        public virtual int IdPronostico { set; get; }
        public virtual int? Goles1 { set; get; }
        public virtual int? Goles2 { set; get; }
        public virtual Participante ParticipantePronostico { set; get; }
        public virtual Partido PartidoPronostico { set; get; }
    }
}
