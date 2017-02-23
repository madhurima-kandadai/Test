using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Assessment.Library;
using Newtonsoft.Json;

namespace Assessment.Controllers
{
    public class HomeController : Controller
    {
        private CompanyService companyService;

        public HomeController()
        {
            companyService = new CompanyService();
        }
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult GetCompanyDetailsWithLeastRatio()
        {
            var companyName = companyService.GetCompanyNameWithLeastWomenMenRatio();
            return Json(companyName, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetCompaniesWithMoreEmployees()
        {
            var list = companyService.GetCompanyWithMoreEmployees();
            return Json(list, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetProjectDetails()
        {
            var list = companyService.GetProjectsList();
            return Json(list, JsonRequestBehavior.AllowGet);
        }
    }
}