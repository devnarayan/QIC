using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QIC.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Mission_Vision()
        {
            return View();
        }
        public ActionResult GM_Manger()
        {
            return View();
        }
        public ActionResult Introduction()
        {
            return View();
        }
        public ActionResult Scope()
        {
            return View();
        }
        public ActionResult CertificationRegistration()
        {
            return View();
        }
        public ActionResult ContactUs()
        {
            return View();
        }
    }
}