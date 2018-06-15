using FluentNHibernate.Mapping;
using QW.Data.Entities;

namespace QW.Data.Mappings
{
    public class ParticipanteMap : ClassMap<Participante>
    {
        public ParticipanteMap()
        {
            Table("Participante");
            ReadOnly();
            Id(x => x.IdParticipante).UnsavedValue(0).GeneratedBy.Native();
            Map(x => x.Alias).Not.Nullable().Length(100);
            Map(x => x.Contrasena).Not.Nullable().Length(1000);
        }
    }
}
