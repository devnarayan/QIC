﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QIC.Areas.Admin.Models;
using AutoMapper;
using System.IO;

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
         [Authorize]
        public ActionResult Header()
        {
            return View();
        }
         [Authorize]
        public ActionResult ContentPage()
        {
            return View();
        }
         public ActionResult UploadPic()
         {
             return View();
         }
        //  start
         public string GetLanguage1()
         {
             List<Language> mdl = new List<Language>();
             var model = db.Languages.ToList();
             Mapper.CreateMap<Language, LangugeModel>();
             var model22 = Mapper.Map<List<Language>, List<LangugeModel>>(model);
             string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
             return st;
         }
         public string GetSelectPage()
         {
             List<WebPage> mdl = new List<WebPage>();
             var model = db.WebPages.ToList();
             Mapper.CreateMap<WebPage, WebPageModel>();
             var model22 = Mapper.Map<List<WebPage>, List<WebPageModel>>(model);
             string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
             return st;
         }
         public string GetPicList(int PageNo,int lid)
         {
             List<ContentImage> mdl = new List<ContentImage>();
             var model = db.ContentImages.Where(ps=>ps.WebPageID==PageNo && ps.LanguageID==lid).ToList();
             Mapper.CreateMap<ContentImage, ContantImageModel>();
             var model22 = Mapper.Map<List<ContentImage>, List<ContantImageModel>>(model);
             string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
             return st;
         }
         public string GetPicName(int ContentImageID)
         {
             ContentImage mdl = new ContentImage();
             var model = db.ContentImages.Where(ps => ps.ContentImageID == ContentImageID).FirstOrDefault();
             Mapper.CreateMap<ContentImage, ContantImageModel>();
             var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
             string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
             return st;
         }
         public string UploadImage(HttpPostedFileBase file,int lid,int pageid,int cid)
         { 
           string fName = string.Empty;
           try
           {
               if (file != null)
               {
                   var ext = Path.GetExtension(file.FileName);
                   Guid FileName = Guid.NewGuid();
                   var fileName = FileName + ext;
                   var path = Server.MapPath("~/Upload/" + fileName);
                   file.SaveAs(path);
                   fName = "/Upload/" + fileName;
                   var mdl = db.ContentImages.Where(sg => sg.ContentImageID == cid).FirstOrDefault();
                   mdl.PicsUrl = fName;
                   db.Entry(mdl).State = EntityState.Modified;
                   int ii = db.SaveChanges();
               }

               return fName.ToString();
           }
           catch (Exception ex)
           {
               return "Error";
           }
         }
         public string Save()
         {
             return "";
         }
        //end
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
        public string GetHeaderContent2(int LanguageID)
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
        // abha start
        public string GetPics(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPics1(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPics2(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPics3(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPicsAcomplished(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPicsAcomplished1(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPicsAcomplished2(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPicsAcomplished3(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPicsAcomplished4(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPicsAcomplished5(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPicsAcomplished6(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        public string GetPicsAcomplished7(int LanguageID, int WebPageID, int ContentImageID)
        {
            ContentImage mdl = new ContentImage();
            var model = db.ContentImages.Where(i => i.LanguageID == LanguageID && i.WebPageID == WebPageID && i.ContentImageID == ContentImageID).FirstOrDefault();
            Mapper.CreateMap<ContentImage, ContantImageModel>();
            var model22 = Mapper.Map<ContentImage, ContantImageModel>(model);
            string st = Newtonsoft.Json.JsonConvert.SerializeObject(model22);
            return st;
        }
        // end
        public int UpdateHeaderContent(int LanguageID, string txtHome, string txtQIC, string txtMission, string txtGMMessage, string txtIntroduction, string txtScope, string txtCertification, string txtOrganization, string txtProjects, string txtAccomplish, string txtOngoings, string txtCareer, string txtContactUs, string txtAboutCompany, string txtAboutCompanyContent, string txtCompany, string txtCONTACTINFO, string txtPhone, string txtFax, string txtEmail, string txtAddress1, string txtAddress2, string txtAddress3, string txtCopyright, string txtRights)
        {
            using (QICdbEntities2 Context = new QICdbEntities2())
            {
                var Llist = Context.HeaderContents.Where(i => i.LanguageID == LanguageID).ToList();

                foreach (var ht in Llist)
                {
                    string hname = ht.HeaderName.ToString();
                    int hederId = Convert.ToInt32(ht.HeaderID);
                    if(hname=="Home")
                    {

                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtHome;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if(hname=="QIC")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtQIC;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Mission & Vision")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtMission;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "GM Message")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtGMMessage;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Introduction")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtIntroduction;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Scope of work")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtScope;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Certification & Registration")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtCertification;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Organization")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtOrganization;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Projects")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtProjects;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Accomplished with")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtAccomplish;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Ongoing")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtOngoings;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Career")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtCareer;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Contact Us")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtContactUs;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "About Company")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtAboutCompany;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "About Company Content")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtAboutCompanyContent;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Company")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtCompany;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "CONTACT INFORMATION")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtCONTACTINFO;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Phone")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtPhone;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Fax")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtFax;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Email")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtEmail;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Address1")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtAddress1;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Address2")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtAddress2;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Address3")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtAddress3;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "Copyright")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtCopyright;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                    else if (hname == "All Rights")
                    {
                        var mdl = Context.HeaderContents.Where(i => i.HeaderID == hederId).FirstOrDefault();
                        mdl.HeaderContent1 = txtRights;
                        Context.Entry(mdl).State = EntityState.Modified;
                        int ii = Context.SaveChanges();

                    }
                }                              
                return 1;
            };
        }



    }
}