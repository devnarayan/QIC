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
    
    public partial class Language
    {
        public Language()
        {
            this.Menus = new HashSet<Menu>();
            this.HeaderContents = new HashSet<HeaderContent>();
            this.Contents = new HashSet<Content>();
        }
    
        public int LanguageID { get; set; }
        public string Lang { get; set; }
        public string LangShort { get; set; }
    
        public virtual ICollection<Menu> Menus { get; set; }
        public virtual ICollection<HeaderContent> HeaderContents { get; set; }
        public virtual ICollection<Content> Contents { get; set; }
    }
}