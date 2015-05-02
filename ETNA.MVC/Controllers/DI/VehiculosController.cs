using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ETNA.BL.DI;
using ETNA.MVC.Models.DI;

namespace ETNA.MVC.Controllers.DI
{
    public class VehiculosController : Controller
    {
        //
        // GET: /Vehiculos/

        public ActionResult Index()
        {
            var gestor = new GestorVehiculos();
            var vehiculos = gestor.Listar();
            var model = AutoMapper.Mapper.Map<List<VehiculoViewModel>>(vehiculos);
            return View(model);
        }

        //
        // GET: /Vehiculos/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Vehiculos/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Vehiculos/Create

        [HttpPost]
        public ActionResult Create(VehiculoViewModel model)
        {
            try
            {
                var gestor = new GestorVehiculos();
                gestor.InsertarVehiculo(model.marca, model.placa);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Vehiculos/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Vehiculos/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Vehiculos/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Vehiculos/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
