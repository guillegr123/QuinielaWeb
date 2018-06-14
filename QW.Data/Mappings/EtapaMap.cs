using FluentNHibernate.Mapping;
using QW.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QW.Data.Mappings
{
    public class EtapaMap : ClassMap<Etapa>
    {
        public EtapaMap()
        {
            Table("Etapa");
            ReadOnly();
            Id(x => x.IdEtapa).UnsavedValue(0).GeneratedBy.Identity();
            Map(x => x.Nombre).Not.Nullable().Length(100);
        }
    }
}
