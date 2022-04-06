using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace greglistSql.Models
{
  public class Car
  {
    public int Id { get; set; }

    [Required]
    public string Make { get; set; }
    public string Model { get; set; }
    public int Year { get; set; }
  }
}