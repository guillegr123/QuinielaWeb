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
            References(x => x.EtapaPartido, "IdEtapa")
                .Not.Nullable().Cascade.None()
                .ReadOnly();
            Map(x => x.Goles1).Nullable();
            Map(x => x.Goles2).Nullable();
            Map(x => x.FechaHoraInicio).Nullable().CustomType<UtcDateTimeType>();
            Map(x => x.FechaHoraFin).Nullable().CustomType<UtcDateTimeType>();
            Map(x => x.Lugar).Nullable().Length(100);
            Map(x => x.Fase).Nullable().Length(30);
            Map(x => x.NumJornada).Not.Nullable();
            HasMany(x => x.PronosticosPartidos)
                .KeyColumn("IdPartido")
                .Cascade.None()
                .Inverse();
        }
    }
}
