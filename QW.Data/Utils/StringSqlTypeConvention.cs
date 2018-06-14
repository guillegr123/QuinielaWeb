using FluentNHibernate.Conventions;
using FluentNHibernate.Conventions.Instances;

namespace Disdivsa.Web.Mvc.Dominio.NHibernate.Fluent
{
    /// <summary>
    /// Se asegura de que todas las cadenas de caracteres sean manejadas como VARCHAR,
    /// en vez de NVARCHAR.
    /// </summary>
    public class StringSqlTypeConvention : IPropertyConvention
    {
        public void Apply(IPropertyInstance instance)
        {
            if (instance.Property.PropertyType == typeof(string))
                instance.CustomType("AnsiString");
        }
    }
}
