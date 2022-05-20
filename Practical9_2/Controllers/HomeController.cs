using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Practical9_2.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
       
        public ContentResult ContentResultEx()
        {
            return Content("This is Example of <b>Content Result</b>.");

        }

        public FileResult FileEx()
        {
            return File("/Text/File.txt", "text/plain", "File.txt");
        }

        public FileContentResult FilecontentEx()
        {
            byte[] file = System.IO.File.ReadAllBytes(Server.MapPath("~/Text/File.txt"));
            return new FileContentResult(file, "text/plain");
        }

        public EmptyResult EmptyResultEx()
        {
            return new EmptyResult();
        }
        
        public JavaScriptResult JavascriptEx()
        {
            return JavaScript("alert('This is Example of Javascript.')");
        }
      
        public JsonResult JsonEx()
        {
            return Json(new { Student_Name = "Harry", Department = "B.Tech", Field = "CSE", Semester = "3rd" }, JsonRequestBehavior.AllowGet);
        }

        
    }
}