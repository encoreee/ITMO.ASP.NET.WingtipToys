using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace WingtipToys.Data.ModelsCodeFirst
{
    public partial class WingtipToysModel : DbContext
    {
        public WingtipToysModel()
            : base("name=WingtipToysModel")
        {
        }

        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Product> Products { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
