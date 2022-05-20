using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Practical9_1.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee

        [Route("Employee/{Name?}")]
        public string Emp(string Name)
        {
            return $"Hello {Name}";
        }
    }
}