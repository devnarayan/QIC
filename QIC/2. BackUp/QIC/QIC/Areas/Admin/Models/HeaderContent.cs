//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QIC.Areas.Admin.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class HeaderContent
    {
        public int HeaderID { get; set; }
        public Nullable<int> LanguageID { get; set; }
        public string HeaderName { get; set; }
        public string HeaderContent1 { get; set; }
    
        public virtual Language Language { get; set; }
    }
}