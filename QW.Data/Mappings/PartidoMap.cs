using FluentNHibernate.Mapping;
using NHibernate.Type;
using QW.Data.Entities;

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
            Map(x => x.Goles1).Nullable();
            Map(x => x.Goles2).Nullable();
            Map(x => x.FechaHoraInicio).Nullable().CustomType<UtcDateTimeType>();
            Map(x => x.FechaHoraFin).Nullable().CustomType<UtcDateTimeType>();
            Map(x => x.Lugar).Nullable().Length(100);
            Map(x => x.EtapaNivel1).Not.Nullable().Length(20);
            Map(x => x.EtapaNivel2).Not.Nullable().Length(20);
            Map(x => x.EtapaNivel3).Not.Nullable().Length(20);
            HasMany(x => x.PronosticosPartidos)
                .KeyColumn("IdPartido")
                .Cascade.None()
                .Inverse();
        }
    }
}
