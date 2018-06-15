using FluentNHibernate.Mapping;
using QW.Data.Entities;

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
            References(x => x.ParticipantePronostico, "IdParticipante")
                .Not.Nullable()
                .Cascade.None();
            References(x => x.PartidoPronostico, "IdPartido")
                .Not.Nullable()
                .Cascade.None();
        }
    }
}
