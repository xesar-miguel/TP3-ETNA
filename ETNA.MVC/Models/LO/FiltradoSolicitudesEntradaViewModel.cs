using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ETNA.Common;

namespace ETNA.MVC.Models.LO
{
    public class FiltradoSolicitudesEntradaViewModel
    {
        [DisplayName("Id Solicitud")]
        public int? IdSolicitud { get; set; }

        [DisplayName("Elaborada por")]
        public string IdEmpleado { get; set; }

        [DisplayName("Desde")]
        public DateTime? FechaInicio { get; set; }

        [DisplayName("Hasta")]
        public DateTime? FechaFin { get; set; }

        [DisplayName("Tipo de Entrada")]
        public string TipoEntrada { get; set; }

        public IEnumerable<SelectListItem> Empleados { get; set; }

        public List<ListaSolicitudEntradaViewModel> ListaInicial;

        //TODO traerlo de algún método?
        public IEnumerable<SelectListItem> TiposEntrada
        {
            get { return _tiposEntrada; }
        }

        private readonly IEnumerable<SelectListItem> _tiposEntrada = new List<SelectListItem>
        {
            new SelectListItem()
            {
                Text = Enums.GetEnumDescription(Enums.TipoEntrada.Compra),
                Value = ((int)Enums.TipoEntrada.Compra).ToString()
            },
            new SelectListItem(){
                Text = Enums.GetEnumDescription(Enums.TipoEntrada.ProduccionPropia),
                Value = ((int)Enums.TipoEntrada.ProduccionPropia).ToString()
            },
            new SelectListItem(){
                Text = Enums.GetEnumDescription(Enums.TipoEntrada.TrasladoEntreAlmacenes),
                Value = ((int)Enums.TipoEntrada.TrasladoEntreAlmacenes).ToString()
            }
        };
    }
}