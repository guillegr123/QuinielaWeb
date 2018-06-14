using FluentNHibernate.Mapping;
using QW.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QW.Data.Mappings
{
    public class PartidoMap : ClassMap<Partido>
    {
        public PartidoMap()
        {
            Table("Partido");
            ReadOnly();
            Id(x => x.IdPartido).UnsavedValue(0).GeneratedBy.Identity();
            Map(x => x.Codigo1).Nullable().Length(3);
            Map(x => x.Codigo2).Nullable().Length(3);
            Map(x => x.Equipo1).Nullable().Length(100);
            Map(x => x.Equipo2).Nullable().Length(100);
            References(x => x.EtapaPartido, "idEtapa")
                .Not.Nullable().Cascade.None()
                .ReadOnly();
            Map(x => x.Goles1).Nullable();
            Map(x => x.Goles2).Nullable();
            Map(x => x.FechaHoraInicio).Nullable();
            Map(x => x.FechaHoraFin).Nullable();
            Map(x => x.Lugar).Nullable().Length(100);
            HasMany(x => x.PronosticosPartidos)
                .KeyColumn("idPartido")
                .Cascade.None()
                .Inverse();
        }
    }
}
