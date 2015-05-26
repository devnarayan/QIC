using QIC.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QIC.Areas.En.Controllers
{
    public class QICController : Controller
    {
        //
        // GET: /En/Home/
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult About()
        {
            return View();
        }
        public ActionResult CertificationRegistration()
        {
            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult ContactUs()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ContactUs(FormCollection collection)
        {
            SendEmail se = new SendEmail();
            string msg = se.sendContactus(collection["name"].ToString(), collection["email"].ToString(), collection["url"].ToString(), collection["message"].ToString());
            ViewBag.Msg = msg;
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
        public ActionResult Mission_Vision()
        {
            return View();
        }
        public ActionResult Oraganization()
        {
            return View();
        }
        public ActionResult Scope()
        {
            return View();
        }


    }
}