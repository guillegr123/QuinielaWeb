using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate;
using NHibernateEnvironment = NHibernate.Cfg.Environment;
using System.Reflection;
using QW.Data.NHibernate.Fluent;

namespace QW.Data
{
    public class QWSessionFactory
    {
        private readonly string _ConnectionString;

        private ISessionFactory _Factory = null;
        public ISessionFactory Factory
        {
            get
            {
                if (_Factory == null)
                {
                    _Factory = BuildSessionFactory();
                }
                return _Factory;
            }
        }

        public QWSessionFactory(string connectionString)
        {
            _ConnectionString = connectionString;
        }

        private ISessionFactory BuildSessionFactory()
        {
            Assembly currentAssembly = Assembly.GetAssembly(this.GetType());
            FluentConfiguration fc = Fluently.Configure()
                        .Database(MsSqlConfiguration.MsSql2012.ConnectionString(_ConnectionString))
                        .Mappings(
                                m =>
                                {
                                    m.FluentMappings
                                        .AddFromAssembly(currentAssembly)
                                        .Conventions
                                            .Add<StringSqlTypeConvention>();
                                    m.HbmMappings.AddFromAssembly(currentAssembly);
                                }
                            );

            return fc.BuildConfiguration()
                       .SetProperty(NHibernateEnvironment.ReleaseConnections, "on_close")
                       .BuildSessionFactory();
        }
    }
}
