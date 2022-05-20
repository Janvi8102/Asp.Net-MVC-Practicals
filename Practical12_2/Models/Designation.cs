using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Practical12_2.Models
{
    public class Designation
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string designation { get; set; }

        public virtual List<Employee> emps { get; set; }


    }
}