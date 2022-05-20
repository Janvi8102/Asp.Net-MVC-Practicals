using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Practical14_2.Controllers
{
    public class ViewpageController : Controller
    {
        // GET: Viewpage
        public ActionResult ForAdmin()
        {
            return View();
        }
        public ActionResult ForUser()
        {
            return View();
        }
    }
}