using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QIC.Areas.Admin.Controllers
{
    public class HeaderController : Controller
    {
        // GET: Admin/Header
        public ActionResult Index()
        {
            return View();
        }
    }
}