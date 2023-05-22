using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Calimex.Startup))]
namespace Calimex
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
