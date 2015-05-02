using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace ETNA.MVC.Models.LO
{
    public class DetalleSolicitudSalidaViewModel
    {
        [DisplayName("Código Producto")]
        public int Id { get; set; }

        [DisplayName("Nombre Producto")]
        public string NombreProducto { get; set; }
        
        public int Cantidad { get; set; }

        public int CantidadFinal { get; set; }

        public int CantidadSaliente { get; set; }
    }
}