using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace ETNA.MVC.Models.DI
{
    public class EntregaViewModel
    {
        [Key]
        [DisplayName("Codigo")]
        public int Codigo { get; set; }

        [Key]
        [DisplayName("Nro. de Entrega:")]
        public string Numero { get; set; }

        [DisplayName("Fecha Emisión:")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime FechaGeneracion { get; set; }

        [DisplayName("Fecha Entrega:")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime FechaEntrega { get; set; }

        [DisplayName("Cliente:")]
        public string Cliente { get; set; }

        [DisplayName("Zona Despacho:")]
        public string ZonaDespacho { get; set; }

        [DisplayName("Estado:")]
        public string EstadoEntrega { get; set; }

        public List<DetalleEntregaViewModel> ListaDetalle { get; set; }

      
    }
}