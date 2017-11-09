using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SitiosPrueba4.Startup))]
namespace SitiosPrueba4
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
