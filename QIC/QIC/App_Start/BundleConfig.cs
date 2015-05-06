using System.Web;
using System.Web.Optimization;

namespace QIC
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/script").Include(
                      "~/vendors/rs-plugin/js/jquery.themepunch.tools.min.js",
                      "~/vendors/rs-plugin/js/jquery.themepunch.revolution.min.js",
                      "~/vendors/owl.carousel/js/owl.carousel.min.js",
                      "~/vendors/nicescroll/jquery.nicescroll.js",
                      "~/vendors/mixitup/jquery.mixitup.js",
                      "~/vendors/js-flickr-gallery/js/js-flickr-gallery.min.js",
                      "~/vendors/lightbox/js/lightbox.min.js",
                      "~/js/construction.js",
                      "~/js/jquery-2.1.3.min.js",
                      "~/js/bootstrap.min.js"));

            bundles.Add(new StyleBundle("~/Content/qiccss").Include(
                "~/css/bootstrap.min.css",
                "~/css/bootstrap-theme.min.css",
                 "~/css/font-awesome.min.css",
                      "~/vendors/owl.carousel/css/owl.carousel.css",
                        "~/css/settings.css",
                      "~/vendors/js-flickr-gallery/css/js-flickr-gallery.css",
                      "~/vendors/lightbox/css/lightbox.css",
                        "~/css/style.css"
                      ));

            // Admin Panel
            bundles.Add(new StyleBundle("~/Admin/PanelCSS").Include(
                "~/css/bootstrap.min.css",
                "~/css/sb-admin.css",
                "~/css/plugins/morris.css",
                "font - awesome / css / font - awesome.min.css"
                ));
            bundles.Add(new ScriptBundle("~/Admin/PanelJs").Include(
                "js/jquery.js",
                "js/bootstrap.min.js",
                "js/plugins/morris/raphael.min.js",
                "js/plugins/morris/morris.min.js",
                "js/plugins/morris/morris-data.js"
                ));
        }
    }
}
