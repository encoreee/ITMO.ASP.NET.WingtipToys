﻿using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WingtipToys.Models
{
  public class CategoryEntity
  {
    [ScaffoldColumn(false)]
    public int CategoryID { get; set; }

    [Required, StringLength(100), Display(Name = "Name")]
    public string CategoryName { get; set; }

    [Display(Name = "Product Description")]
    public string Description { get; set; }

    public virtual ICollection<ProductEntity> Products { get; set; }
  }
}