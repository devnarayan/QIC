using System.Web;
using System.Web.Optimization;

namespace QIC
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            //bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
            //            "~/Scripts/jquery-{version}.js",
            //            "~/Scripts/_references.js"));

            //bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
            //            "~/Scripts/jquery.validate*"));

            //// Use the development version of Modernizr to develop with and learn from. Then, when you're
            //// ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            //bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
            //            "~/Scripts/modernizr-*"));

            //bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
            //          "~/Scripts/bootstrap.js",
            //          "~/Scripts/respond.js"));

            //bundles.Add(new StyleBundle("~/Content/css").Include(
            //          "~/Content/bootstrap.css",
            //          "~/Content/site.css"));
            //,
            //         "~/Scripts/bootstrap.js"

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
        }
    }
}
