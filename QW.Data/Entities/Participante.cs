using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QW.Data.Entities
{
    public class Participante
    {
        public virtual int IdParticipante { set; get; }
        public virtual string CodigoEmpleado { set; get; }
        public virtual string Nombre { set; get; }
        public virtual string Dui { set; get; }
    }
}
