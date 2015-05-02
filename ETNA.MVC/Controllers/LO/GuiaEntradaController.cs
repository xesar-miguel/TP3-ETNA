using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using ETNA.BL.LO;
using ETNA.Common;
using ETNA.MVC.Models.LO;
using WebMatrix.WebData;
using AutoMapper;

namespace ETNA.MVC.Controllers.LO
{
    public class GuiaEntradaController : Controller
    {
        //
        // GET: /GuiaEntrada/
        // Lista de almacenes disponibles para el usuario
        public ActionResult Almacenes()
        {
            //Invocamos al servicio
            var service = new GestorAlmacenes();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var almacenesDto = service.ObtenerAlmacenesPorEmpleado(WebSecurity.CurrentUserId);

            if (almacenesDto.Any())
            {
                //Si el usuario solo tiene un almacén asignado, obviamos este paso
                if (almacenesDto.Count() == 1)
                {
                    return RedirectToAction("Solicitudes", new { id = almacenesDto[0].Id });
                }

                //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
                var model = Mapper.Map<List<AlmacenViewModel>>(almacenesDto);
                return View(model);
            }

            @ViewBag.Message = "El usuario no cuenta con ningún almacén asociado.";
            return View("Error");
        }

        //
        // GET: /GuiaEntrada/Solicitudes/5
        // Lista de solicitudes aprobadas listas para hacer una guía de entrada
        public ActionResult Solicitudes(int id)
        {
            //Buscamos algún mensaje de éxito (si venimos de dar de alta una guía de entrada)
            if (TempData.ContainsKey("Message"))
                @ViewBag.Message = TempData["Message"];

            //Invocamos al servicio
            var service = new GestorSolicitudesEntrada();
            
            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var solicitudesDto = service.ObtenerSolicitudesEntrada(0, (int)Enums.EstadoSolicitudEntrada.Aprobada,
                DateTime.MinValue, DateTime.MinValue, 0, 0);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var listaSolicitudes = Mapper.Map<List<ListaSolicitudEntradaViewModel>>(solicitudesDto);

            //Obtenemos la lista de empleados
            var serviceEmpleados = new GestorEmpleados();
            var listaEmpleados = serviceEmpleados.ObtenerEmpleados();

            var model = new FiltradoSolicitudesEntradaViewModel();
            model.ListaInicial = listaSolicitudes;
            model.Empleados =
                listaEmpleados.Select(
                    x => new SelectListItem() {Text = x.Apellidos + ", " + x.Nombres, Value = x.Id.ToString()})
                    .OrderBy(s => s.Text);
            return View(model);
        }

        // POST /GuiaEntrada/Solicitudes/
        [HttpPost]
        public PartialViewResult Solicitudes(FiltradoSolicitudesEntradaViewModel model)
        {
            //Invocamos al servicio
            var service = new GestorSolicitudesEntrada();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var solicitudesDto = service.ObtenerSolicitudesEntrada(model.IdSolicitud.GetValueOrDefault(),
                (int) Enums.EstadoSolicitudEntrada.Aprobada,
                model.FechaInicio.GetValueOrDefault(), model.FechaFin.GetValueOrDefault(),
                String.IsNullOrEmpty(model.IdEmpleado) ? 0 : Convert.ToInt32(model.IdEmpleado),
                String.IsNullOrEmpty(model.TipoEntrada) ? 0 : Convert.ToInt32(model.TipoEntrada));

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var listaSolicitudes = Mapper.Map<List<ListaSolicitudEntradaViewModel>>(solicitudesDto);

            return PartialView("_ListaSolicitudEntrada",listaSolicitudes);
        }

        //
        // GET: /GuiaEntrada/Atender/5
        // Detalle de una solicitud de Entrada
        public ActionResult Atender(int id, int idAlmacen)
        {
            @ViewBag.IdSolicitud = id;
            @ViewBag.IdAlmacen = idAlmacen;
            TempData["Message"] = "";

            //Invocamos al servicio
            var service = new GestorSolicitudesEntrada();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var solicitudesDto = service.ObtenerSolicitudEntrada(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<SolicitudEntradaViewModel>(solicitudesDto);
            return View(model);
        }

        //
        // POST: /GuiaEntrada/Atender/
        // Dar de alta una guía de entrada
        [HttpPost]
        public ActionResult Atender(AltaGuiaEntradaModel model)
        {
            //Invocamos al servicio
            var service = new GestorGuiasEntrada();

            if (model.Rechazar)
            {
                //Damos de alta la guía de entrada
                var success = service.RechazarGuiaEntrada(model.IdSolicitud, model.Observaciones);
                if (success)
                {
                    TempData["Message"] =
                        String.Format("Se rechazó correctamente la solicitud {0}", model.IdSolicitud);
                } 
            }
            else
            {
                //Damos de alta la guía de entrada
                var success = service.GenerarGuiaEntrada(model.IdSolicitud, model.IdSolicitud, WebSecurity.CurrentUserId);
                if (success)
                {
                    TempData["Message"] =
                        String.Format("Se generó correctamente la guía de entrada para la solicitud {0}",
                            model.IdSolicitud);
                }
            }

            return RedirectToAction("Solicitudes", new { id = model.IdAlmacen });
        }

        //
        // GET: /GuiaEntrada/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /GuiaEntrada/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /GuiaEntrada/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /GuiaEntrada/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /GuiaEntrada/Edit/5

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
        // GET: /GuiaEntrada/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /GuiaEntrada/Delete/5

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
