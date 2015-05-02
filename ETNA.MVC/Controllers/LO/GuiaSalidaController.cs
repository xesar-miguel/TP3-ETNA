using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using ETNA.BL.LO;
using ETNA.Common;
using ETNA.MVC.Models;
using ETNA.MVC.Models.LO;
using WebMatrix.WebData;
using AutoMapper;

namespace ETNA.MVC.Controllers.LO
{
    public class GuiaSalidaController : Controller
    {

        //TODO 
        // 1. Agregar el estado a los campos de la lista
        // 2. Validaciones de error
        // 3. Reconocer si es parcial o completa para poder el estado que corresponda

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

        public ActionResult Solicitudes(int id)
        {
            //Buscamos algún mensaje de éxito (si venimos de dar de alta una guía de salida)
            if (TempData.ContainsKey("Message"))
                @ViewBag.Message = TempData["Message"];

            //Invocamos al servicio
            var service = new GestorSolicitudesSalida();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var solicitudesDto = service.ObtenerSolicitudesSalida(0, (int)Enums.EstadoSolicitudSalida.Aprobada,
                DateTime.MinValue, DateTime.MinValue, 0, 0, "Av. Benavides", "Almacenes SA");

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var listaSolicitudes = Mapper.Map<List<ListaSolicitudSalidaViewModel>>(solicitudesDto);

            //Obtenemos la lista de empleados
            var serviceEmpleados = new GestorEmpleados();
            var listaEmpleados = serviceEmpleados.ObtenerEmpleados();

            var model = new FiltradoSolicitudesSalidaViewModel();
            model.ListaInicial = listaSolicitudes;
            model.Empleados =
                listaEmpleados.Select(
                    x => new SelectListItem() { Text = x.Apellidos + ", " + x.Nombres, Value = x.Id.ToString() })
                    .OrderBy(s => s.Text);
            return View(model);
        }

        [HttpPost]
        public PartialViewResult Solicitudes(FiltradoSolicitudesSalidaViewModel model)
        {
            //Invocamos al servicio
            var service = new GestorSolicitudesSalida();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var solicitudesDto = service.ObtenerSolicitudesSalida(model.IdSolicitud.GetValueOrDefault(),
                (int)Enums.EstadoSolicitudSalida.Aprobada,
                model.FechaInicio.GetValueOrDefault(), model.FechaFin.GetValueOrDefault(),
                String.IsNullOrEmpty(model.IdEmpleado) ? 0 : Convert.ToInt32(model.IdEmpleado),
                String.IsNullOrEmpty(model.TipoSalida) ? 0 : Convert.ToInt32(model.TipoSalida),
                model.DireccionEntrega, model.RazonSocial);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var listaSolicitudes = Mapper.Map<List<ListaSolicitudSalidaViewModel>>(solicitudesDto);

            return PartialView("_ListaSolicitudSalida", listaSolicitudes);
        }

        public ActionResult Atender(int id, int idAlmacen)
        {
            @ViewBag.IdSolicitud = id;
            @ViewBag.IdAlmacen = idAlmacen;
            TempData["Message"] = "";

            //Invocamos al servicio
            var service = new GestorSolicitudesSalida();

            //Como código de empleado le pasamos el current user id (es importante que coincida con el empleado id)
            var solicitudesDto = service.ObtenerSolicitudSalida(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var model = Mapper.Map<SolicitudSalidaViewModel>(solicitudesDto);
            return View(model);
        }

        [HttpPost]
        public ActionResult Atender(AltaGuiaSalidaModel model)
        {
            //Invocamos al servicio
            //var service = new GestorGuiasSalida();
            //Mapper.CreateMap<ProductoGuiaSalidaViewModel, ProductoDto>();
            //var productosDto = Mapper.Map<ProductoDto[]>(model.Productos);
            //var success = service.GenerarGuiaSalidaParcial(model.IdSolicitud, model.IdAlmacen, WebSecurity.CurrentUserId,
            //    productosDto);

            //if (success)
            //{
            //    TempData["Message"] =
            //        String.Format("Se generó correctamente la guía de salida para la solicitud {0}", model.IdSolicitud);
            //}

            return Json(true); //RedirectToAction("Solicitudes", new { id = model.IdAlmacen });
        }

        // GET: /GuiaSalida/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /GuiaSalida/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /GuiaSalida/Create

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
        // GET: /GuiaSalida/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /GuiaSalida/Edit/5

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
        // GET: /GuiaSalida/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /GuiaSalida/Delete/5

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
