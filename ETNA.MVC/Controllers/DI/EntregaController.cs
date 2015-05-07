using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ETNA.BL.DI;
using AutoMapper;
using ETNA.MVC.Models.DI;

namespace ETNA.MVC.Controllers.DI
{
    public class EntregaController : Controller
    {
        //
        // GET: /Entrega/

        public ActionResult Index()
        {
            //Invocamos al servicio
            var service = new GestorEntrega();

            
            var entregasDto = service.ObtenerEntregas(DateTime.Today, DateTime.Now,0,0);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var listaEntregas = Mapper.Map<List<ListaEntregaViewModel>>(entregasDto);

            //Obtenemos la lista de clientes
            var serviceClientes = new GestorCliente();
            var listaClientes = serviceClientes.ObtenerClientes();

            //Obtenemos la lista de estados de las entregas
            var listaEstadosEntrega = service.ObtenerEstadosEntrega();

            var model = new FiltradoEntregasViewModel();

            model.GenerarEntrega = false;

            if (listaEntregas != null && listaEntregas.Count() == 0)
            {
                model.GenerarEntrega = true;
               
            }

            model.ListaInicial = listaEntregas;
            model.FechaInicio = DateTime.Today;
            model.FechaFin = DateTime.Now;
            model.Clientes =
                listaClientes.Select(
                    x => new SelectListItem() { Text = x.Nombre, Value = x.Codigo.ToString() })
                    .OrderBy(s => s.Text);
            model.EstadosEntrega =
                listaEstadosEntrega.Select(
                    x => new SelectListItem() { Text = x.Descripcion, Value = x.Codigo.ToString() })
                    .OrderBy(s => s.Text);

            return View(model);
        }

        [HttpPost]
        public PartialViewResult Index(FiltradoEntregasViewModel model)
        {
            //Invocamos al servicio
            var service = new GestorEntrega();

            
            var entregasDto = service.ObtenerEntregas(             
                model.FechaInicio.GetValueOrDefault(), model.FechaFin.GetValueOrDefault().AddDays(1),
                String.IsNullOrEmpty(model.IdCliente) ? 0 : Convert.ToInt32(model.IdCliente),
                String.IsNullOrEmpty(model.IdEstadoEntrega) ? 0 : Convert.ToInt32(model.IdEstadoEntrega));

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var listaEntregas= Mapper.Map<List<ListaEntregaViewModel>>(entregasDto);

            return PartialView("_ListaEntrega", listaEntregas);
        }

        public ActionResult VerEntrega(int id)
        {
            //Invocamos al servicio
            var service = new GestorEntrega();
            var entregaDto = service.ObtenerEntrega(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var entrega = Mapper.Map<EntregaViewModel>(entregaDto);

            var detallesDto = service.ObtenerEntregaDetalles(id);

            var listaDetalles = Mapper.Map<List<DetalleEntregaViewModel>>(detallesDto);

            entrega.ListaDetalle = listaDetalles;

            return View(entrega);
        }

        public ViewResult GenerarEntrega()
        {

            return View();
        }

        [HttpPost]
        public JsonResult ProcesarEntrega()
        {
            int message = 0;

            //Invocamos al servicio
            var service = new GestorEntrega();

            service.generarEntregasFactura(DateTime.Today, DateTime.Now);
            service.generarEntregasPedido(DateTime.Today, DateTime.Now);

            message = 1;

            return Json(new
            {
                Message = message
            }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult ModificarEntrega(int id)
        {
            //Invocamos al servicio
            var service = new GestorEntrega();
            var entregaDto = service.ObtenerEntrega(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var entrega = Mapper.Map<EntregaViewModel>(entregaDto);

            var detallesDto = service.ObtenerEntregaDetalles(id);

            var listaDetalles = Mapper.Map<List<DetalleEntregaViewModel>>(detallesDto);

            entrega.ListaDetalle = listaDetalles;

            return View(entrega);
        }

        [HttpPost]
        public JsonResult ModificarEntrega(int id, DateTime fechaEntrega)
        {
            int message = 0;
            //Invocamos al servicio
            var service = new GestorEntrega();

            service.modificarEntrega(id, fechaEntrega);

            message = 1;

            return Json(new
            {
                Message = message
            }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult EliminarEntrega(int id)
        {
            //Invocamos al servicio
            var service = new GestorEntrega();
            var entregaDto = service.ObtenerEntrega(id);

            //Mapeamos el DTO a nuestro modelo (de forma automática o a mano, dependiendo de nuestra necesidad)
            var entrega = Mapper.Map<EntregaViewModel>(entregaDto);

            var detallesDto = service.ObtenerEntregaDetalles(id);

            var listaDetalles = Mapper.Map<List<DetalleEntregaViewModel>>(detallesDto);

            entrega.ListaDetalle = listaDetalles;

            return View(entrega);
        }

        [HttpPost]
        public JsonResult DesactivarEntrega(int id)
        {
            int message = 0;
            //Invocamos al servicio
            var service = new GestorEntrega();

            service.eliminarEntrega(id);

            message = 1;

            return Json(new
            {
                Message = message
            }, JsonRequestBehavior.AllowGet);
        }

    }
}
