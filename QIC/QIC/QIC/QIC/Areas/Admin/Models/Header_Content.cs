using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QIC.Areas.Admin.Models
{
    public class Header_Content
    {
        public int HeaderID { get; set; }
        public int LanguageID { get; set; }
        public string HeaderName { get; set; }
        public string HeaderContent { get; set; }
    }
}