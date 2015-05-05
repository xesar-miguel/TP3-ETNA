using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace ETNA.MVC.Models.DI
{
    public class DetalleEntregaViewModel
    {
        [DisplayName("Nro. Item")]
        public int NroItem { get; set; }

        [DisplayName("Nombre Producto")]
        public string NombreProducto { get; set; }

        [DisplayName("Cantidad Entrega Prog.")]
        public int CantidadEntregaProg { get; set; }

        [DisplayName("Cantidad Entregada")]
        public int CantidadEntregada { get; set; }

        [DisplayName("Cantidad Rechazada")]
        public int CantidadRechazada { get; set; }

    }
}