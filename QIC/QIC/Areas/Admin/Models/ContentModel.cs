using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QIC.Areas.Admin.Models
{
    public class ContentModel
    {
        public int ContentID { get; set; }
        public int LanguageID { get; set; }
        public int WebPageID { get; set; }
        public SelectList LangList { get; set; }
        public SelectList WebPageList { get; set; }
        public SelectList ContentList { get; set; }
        public string EnContent { get; set; }
        public string LangContent { get; set; }
        public Nullable<bool> IsReachText { get; set; }
    }
}