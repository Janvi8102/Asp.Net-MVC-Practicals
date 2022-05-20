using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Practical8_1.Controllers
{
    public class StringController : Controller
    {
        // GET: String
        public ActionResult Index()
        {
            ViewBag.MyString = "Hello World";
            return View();
        }
    }
}