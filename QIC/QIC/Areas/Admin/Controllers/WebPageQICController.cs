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
    public class WebPageQICController : Controller
    {
        private QICdbEntities2 db = new QICdbEntities2();

        // GET: /Admin/WebPageQIC/
        public ActionResult Index()
        {
            return View(db.WebPages.ToList());
        }

        // GET: /Admin/WebPageQIC/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WebPage webpage = db.WebPages.Find(id);
            if (webpage == null)
            {
                return HttpNotFound();
            }
            return View(webpage);
        }

        // GET: /Admin/WebPageQIC/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /Admin/WebPageQIC/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="WebPageID,PageNo,PageName")] WebPage webpage)
        {
            if (ModelState.IsValid)
            {
                db.WebPages.Add(webpage);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(webpage);
        }

        // GET: /Admin/WebPageQIC/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WebPage webpage = db.WebPages.Find(id);
            if (webpage == null)
            {
                return HttpNotFound();
            }
            return View(webpage);
        }

        // POST: /Admin/WebPageQIC/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="WebPageID,PageNo,PageName")] WebPage webpage)
        {
            if (ModelState.IsValid)
            {
                db.Entry(webpage).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(webpage);
        }

        // GET: /Admin/WebPageQIC/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            WebPage webpage = db.WebPages.Find(id);
            if (webpage == null)
            {
                return HttpNotFound();
            }
            return View(webpage);
        }

        // POST: /Admin/WebPageQIC/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            WebPage webpage = db.WebPages.Find(id);
            db.WebPages.Remove(webpage);
            db.SaveChanges();
            return RedirectToAction("Index");
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
