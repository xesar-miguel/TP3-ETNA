using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ETNA.MVC.Models.LO
{
    public class AltaGuiaSalidaModel
    {
        public int IdSolicitud { get; set; }
        public int IdAlmacen { get; set; }
        public ProductoGuiaSalidaViewModel[]  Productos { get; set; }
    }
}