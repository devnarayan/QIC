using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(QIC.Startup))]
namespace QIC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
