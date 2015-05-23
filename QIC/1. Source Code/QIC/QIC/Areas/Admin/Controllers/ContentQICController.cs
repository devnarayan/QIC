using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QIC.Areas.Admin.Models;

namespace QIC.Areas.Admin.Controllers
{
    public class ContentQICController : Controller
    {
        private QICdbEntities2 db = new QICdbEntities2();

        // GET: /Admin/ContentQIC/
        public ActionResult Index()
        {
            var contents = db.Contents.Include(c => c.Language).Include(c => c.WebPage);
            ContentModel mdl = new ContentModel();
            var lanl=db.Languages.ToList();
            mdl.LangList = new SelectList(lanl, "LanguageID", "Lang");
            var webl=db.WebPages.ToList();
            mdl.WebPageList = new SelectList(webl, "WebPageID", "PageName");
            mdl.ContentList = new SelectList(db.Contents.Where(dm => dm.WebPageID == webl[0].WebPageID && dm.LanguageID == lanl[0].LanguageID), "ContentID", "EnContent");
            return View(mdl);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
