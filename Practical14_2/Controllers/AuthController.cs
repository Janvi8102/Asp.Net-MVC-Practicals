using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Practical14_2.Controllers
{
    [Authorize(Users = @"SF-CPU-566\Administrator, SF-CPU-566\Simple")]
    public class AuthController : Controller
    {
        // GET: Auth
        [Authorize(Users = @"SF-CPU-566\Administrator")]
        public ActionResult ForAdmin()
        {
            return View();
        }

        [Authorize(Users = @"SF-CPU-566\Simple")]
        public ActionResult ForUser()
        {
            return View();
        }
    }
}