using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QIC.Areas.Admin.Models
{
    public class WebPageModel
    {
        public int WebPageID { get; set; }
        public int PageNo { get; set; }
        public string PageName { get; set; }
    }
    public class ContantImageModel
    {
        public int ContentImageID { get; set; }
        public Nullable<int> LanguageID { get; set; }
        public Nullable<int> WebPageID { get; set; }
        public string LangContent { get; set; }
        public string PicsUrl { get; set; }
    }
}