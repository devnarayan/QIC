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
    public class HeaderController : Controller
    {
        private QICdbEntities2 db = new QICdbEntities2();

        // GET: /Admin/Header/
        public ActionResult Index()
        {
            var headercontents = db.HeaderContents.Include(h => h.Language);
            return View(headercontents.ToList());
        }

        // GET: /Admin/Header/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HeaderContent headercontent = db.HeaderContents.Find(id);
            if (headercontent == null)
            {
                return HttpNotFound();
            }
            return View(headercontent);
        }

        // GET: /Admin/Header/Create
        public ActionResult Create()
        {
            ViewBag.LanguageID = new SelectList(db.Languages, "LanguageID", "Lang");
            return View();
        }

        // POST: /Admin/Header/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="HeaderID,LanguageID,HeaderName,HeaderContent1")] HeaderContent headercontent)
        {
            if (ModelState.IsValid)
            {
                db.HeaderContents.Add(headercontent);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.LanguageID = new SelectList(db.Languages, "LanguageID", "Lang", headercontent.LanguageID);
            return View(headercontent);
        }

        // GET: /Admin/Header/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HeaderContent headercontent = db.HeaderContents.Find(id);
            if (headercontent == null)
            {
                return HttpNotFound();
            }
            ViewBag.LanguageID = new SelectList(db.Languages, "LanguageID", "Lang", headercontent.LanguageID);
            return View(headercontent);
        }

        // POST: /Admin/Header/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="HeaderID,LanguageID,HeaderName,HeaderContent1")] HeaderContent headercontent)
        {
            if (ModelState.IsValid)
            {
                db.Entry(headercontent).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.LanguageID = new SelectList(db.Languages, "LanguageID", "Lang", headercontent.LanguageID);
            return View(headercontent);
        }

        // GET: /Admin/Header/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HeaderContent headercontent = db.HeaderContents.Find(id);
            if (headercontent == null)
            {
                return HttpNotFound();
            }
            return View(headercontent);
        }

        // POST: /Admin/Header/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HeaderContent headercontent = db.HeaderContents.Find(id);
            db.HeaderContents.Remove(headercontent);
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
