﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QICdbEntities2 : DbContext
    {
        public QICdbEntities2()
            : base("name=QICdbEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Language> Languages { get; set; }
        public virtual DbSet<WebPage> WebPages { get; set; }
        public virtual DbSet<HeaderContent> HeaderContents { get; set; }
        public virtual DbSet<Content> Contents { get; set; }
        public virtual DbSet<ContentImage> ContentImages { get; set; }
    }
}
