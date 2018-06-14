using FluentNHibernate.Mapping;
using QW.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QW.Data.Mappings
{
    public class ParticipanteMap : ClassMap<Participante>
    {
        public ParticipanteMap()
        {
            Table("Participante");
            ReadOnly();
            Id(x => x.IdParticipante).UnsavedValue(0).GeneratedBy.Native();
            Map(x => x.CodigoEmpleado).Not.Nullable().Length(6);
            Map(x => x.Nombre).Not.Nullable().Length(200);
            Map(x => x.Dui).Nullable().Length(9);
        }
    }
}
