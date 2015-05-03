using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ETNA.MVC.Controllers
{
    public class HomeController : Controller
    {
        //prueba diego git desde vs 2013
        public ActionResult Index()
        {
            ViewBag.Message = "Bienvenido a la aplicación baterías ETNA.";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Página de descripción de la aplicación.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Página de contacto.";

            return View();
        }
    }
}
