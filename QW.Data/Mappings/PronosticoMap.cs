using FluentNHibernate.Mapping;
using QW.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QW.Data.Mappings
{
    public class PronosticoMap : ClassMap<Pronostico>
    {
        public PronosticoMap()
        {
            Table("Pronostico");
            Id(x => x.IdPronostico).UnsavedValue(0).GeneratedBy.Identity();
            Map(x => x.Goles1).Not.Nullable();
            Map(x => x.Goles2).Not.Nullable();
            References(x => x.ParticipantePronostico, "idParticipante")
                .Not.Nullable()
                .Cascade.None();
            References(x => x.PartidoPronostico, "idPartido")
                .Not.Nullable()
                .Cascade.None();
        }
    }
}
