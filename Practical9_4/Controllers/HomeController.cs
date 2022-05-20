using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Practical9_4.Controllers
{
    public class HomeController : Controller
    {
        [HandleError]
        public ActionResult ErrorExample()
        {
            int num1 = 4;
            int num2 = 0;

            if (num2 == 0)
            {
                throw new DivideByZeroException();
            }
            else
            {
                return Content($"Devision : {num1 / num2}");
            }

        }
    }
}