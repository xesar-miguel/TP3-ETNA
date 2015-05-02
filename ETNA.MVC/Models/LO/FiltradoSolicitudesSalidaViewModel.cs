using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ETNA.Common;

namespace ETNA.MVC.Models.LO
{
    public class FiltradoSolicitudesSalidaViewModel
    {
    
        [DisplayName("Id Solicitud")]
        public int? IdSolicitud { get; set; }

        [DisplayName("Elaborada por")]
        public string IdEmpleado { get; set; }

        [DisplayName("Desde")]
        public DateTime? FechaInicio { get; set; }

        [DisplayName("Hasta")]
        public DateTime? FechaFin { get; set; }

        [DisplayName("Tipo Salida")]
        public string TipoSalida { get; set; }

        [DisplayName("Direccion Entrega")]
        public string DireccionEntrega { get; set; }

        [DisplayName("Razon Social Destinatario")]
        public string RazonSocial { get; set; }

        public IEnumerable<SelectListItem> Empleados { get; set; }

        public List<ListaSolicitudSalidaViewModel> ListaInicial;

        //TODO traerlo de algún método?
        public IEnumerable<SelectListItem> TiposSalida
        {
            get { return _tiposSalida; }
        }

        private readonly IEnumerable<SelectListItem> _tiposSalida = new List<SelectListItem>
        {
            new SelectListItem()
            {
                Text = Enums.GetEnumDescription(Enums.TipoSalida.Venta),
                Value = ((int)Enums.TipoSalida.Venta).ToString()
            },
            new SelectListItem(){
                Text = Enums.GetEnumDescription(Enums.TipoSalida.Reposicion),
                Value = ((int)Enums.TipoSalida.Reposicion).ToString()
            },
            new SelectListItem(){
                Text = Enums.GetEnumDescription(Enums.TipoSalida.MovimientoEntreAlmacenes),
                Value = ((int)Enums.TipoSalida.MovimientoEntreAlmacenes).ToString()
            }
        };

    }
}