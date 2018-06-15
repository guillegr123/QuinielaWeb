using QW.App_Start;
using System.Web;

[assembly: PreApplicationStartMethod(typeof(QWAppHost), "Start")]
namespace QW.App_Start
{
    using Funq;
    using QW.Data;
    using ServiceStack.ServiceInterface;
    using ServiceStack.ServiceInterface.Cors;
    using ServiceStack.Text;
    using ServiceStack.WebHost.Endpoints;
    using System.Configuration;

    public class QWAppHost : AppHostBase
    {
        /// <summary>
        /// Initializes a new instance of your ServiceStack application, with the specified name and assembly containing the services.
        /// </summary>
        public QWAppHost()
            : base("Quiniela Web", typeof(QWAppHost).Assembly)
        {
        }

        public override void Configure(Container container)
        {
            JsConfig.DateHandler = JsonDateHandler.ISO8601;

            //Set JSON web services to return idiomatic JSON camelCase properties
            JsConfig.EmitCamelCaseNames = true;
            JsConfig.IncludeNullValues = true;

            //Register dependencies
            QWSessionFactory sf = new QWSessionFactory(ConfigurationManager.ConnectionStrings["qwdb"].ConnectionString);
            container.Register(c=> sf.Factory.OpenSession()).ReusedWithin(ReuseScope.Request);
            //container.RegisterAutoWiredAs<RepositoryProductMongo, IRepositoryProduct>();
            //container.RegisterAutoWiredAs<RepositoryVendorMongo, IRepositoryVendor>();

            //Enable CORS
            Plugins.Add(new CorsFeature());

            //Enable session
            Plugins.Add(new SessionFeature());

            SetConfig(new EndpointHostConfig
            {
                //DebugMode = true //Show StackTraces for easier debugging (default auto inferred by Debug/Release builds)
            });
        }


        public static void Start()
        {
            new QWAppHost().Init();
        }
    }
}