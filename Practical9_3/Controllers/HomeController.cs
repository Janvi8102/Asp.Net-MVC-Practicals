using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Practical9_3.Controllers
{
    public class HomeController : Controller
    {
        [OutputCache(Duration = 300)]
        public ActionResult outputcache()
        {
            TempData["Date&Time"] = System.DateTime.Now.ToString();
            return View();
        }
    }
}