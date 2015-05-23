using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QIC.Areas.Admin.Models;
using AutoMapper;

namespace QIC.Areas.Admin.Controllers
{
    public class AdminWebPagesController : Controller
    {
        private QICdbEntities2 db = new QICdbEntities2();
        //
        // GET: /Admin/AdminWebPages/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult HomePage()
        {
            ViewBag.LanguageID = new SelectList(db.Languages, "LanguageID", "Lang");
            return View();
        }

        public ActionResult QICPage()
        {
            return View();
        }
        public ActionResult OrganizationPage()
        {
            return View();
        }
        public ActionResult ProjectPage()
        {
            return View();
        }
        public ActionResult CareerPage()
        {
            return View();
        }
        public ActionResult ContactUsPage()
        {
            return View();
        }
        public ActionResult Header()
        {
            return View();
        }
        public ActionResult ContentPage()
        {
            return View();
        }

        public string GetLanguage()
        {
            List<LangugeModel> pdashMdl = new List<LangugeModel>();
            pdashMdl.Add(new LangugeModel { LanguageID = 0, Lang = "Select" });
            using (QICdbEntities2 context = new QICdbEntities2())
            {
                var Llist = context.Languages.ToList();
                foreach (var pl in Llist)
                {
                    Mapper.CreateMap<Language, LangugeModel>();
                    var mdl = Mapper.Map<Language, LangugeModel>(pl);
                    pdashMdl.Add(mdl);
                }
            }
            return Newtonsoft.Json.JsonConvert.SerializeObject(pdashMdl);

        }
        public string GetWebPage()
        {
            List<WebPageModel> WphMdl = new List<WebPageModel>();
            WphMdl.Add(new WebPageModel { WebPageID = 0, PageName = "Select" });
            using (QICdbEntities2 context = new QICdbEntities2())
            {
                var Llist = context.WebPages.ToList();
                foreach (var pl in Llist)
                {
                    Mapper.CreateMap<WebPage, WebPageModel>();
                    var mdl = Mapper.Map<WebPage, WebPageModel>(pl);
                    WphMdl.Add(mdl);
                }
            }
            return Newtonsoft.Json.JsonConvert.SerializeObject(WphMdl);
        }

        public string GetContentList(int LanguageID, int WebPageID)
        {
            List<ContentModel> WphMdl = new List<ContentModel>();
            WphMdl.Add(new ContentModel { ContentID = 0, EnContent = "Select" });
            using (QICdbEntities2 context = new QICdbEntities2())
            {
                var Llist = context.Contents.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID).ToList();
                foreach (var pl in Llist)
                {
                    Mapper.CreateMap<Content, ContentModel>();
                    var mdl = Mapper.Map<Content, ContentModel>(pl);
                    WphMdl.Add(mdl);
                }
            }
            return Newtonsoft.Json.JsonConvert.SerializeObject(WphMdl);
        }

        public string GetLangContentList(int ContentID)
        {
            QICdbEntities2 context = new QICdbEntities2();
            ContentModel WphMdl = new ContentModel();
            //WphMdl.Add(new ContentModel { ContentID = 0, LangContent = "Select" });

            var Llist = context.Contents.Where(i => i.ContentID == ContentID).FirstOrDefault();
            Mapper.CreateMap<Content, ContentModel>();
            var mdl = Mapper.Map<Content, ContentModel>(Llist);

            return Newtonsoft.Json.JsonConvert.SerializeObject(mdl);
        }

        public int UpdateContent(int ContentID, string LangContent)
        {
            using (QICdbEntities2 Context = new QICdbEntities2())
            {
                //ContentModel objContent = new ContentModel();
                //objContent.ContentID = ContentID;
                //objContent.LangContent = LangContent;
                var mdl = Context.Contents.Where(i => i.ContentID == ContentID).FirstOrDefault();
                mdl.LangContent = LangContent;
                Context.Contents.Add(mdl);
                // Context.Contents.Add(mdl);

                Context.Entry(mdl).State = EntityState.Modified;
                int ii = Context.SaveChanges();
                return ii;
            };
        }

        public string GetHeaderContent(int LanguageID)
        {
            List<Header_Content> WphMdl = new List<Header_Content>();
            using (QICdbEntities2 context = new QICdbEntities2())
            {
                var Llist = context.HeaderContents.Where(i => i.LanguageID == LanguageID).ToList();
                foreach (var pl in Llist)
                {
                    Mapper.CreateMap<HeaderContent, Header_Content>();
                    var mdl = Mapper.Map<HeaderContent, Header_Content>(pl);
                    WphMdl.Add(mdl);
                }
            }
            return Newtonsoft.Json.JsonConvert.SerializeObject(WphMdl);
        }


        public int UpdateHeaderContent(int LanguageID, string txtHome, string txtQIC, string txtMission, string txtGMMessage, string txtIntroduction, string txtScope, string txtCertification, string txtOrganization, string txtProjects, string txtAccomplish, string txtOngoings, string txtCareer, string txtContactUs, string txtAboutCompany, string txtAboutCompanyContent, string txtCompany, string txtCONTACTINFO, string txtPhone, string txtFax, string txtEmail, string txtAddress1, string txtAddress2, string txtAddress3, string txtCopyright, string txtRights)
        {
            using (QICdbEntities2 Context = new QICdbEntities2())
            {
                var list = GetHeaderContent(LanguageID);
                for (var i = 0; i < list.Length; i++)
                {

                }

                //var mdl = Context.HeaderContents.Where(i => i.ContentID == ContentID).FirstOrDefault();
                //mdl.LangContent = LangContent;
                //Context.Contents.Add(mdl);
                //Context.Entry(mdl).State = EntityState.Modified;
                //int ii = Context.SaveChanges();
                return 1;
            };
        }

    }
}