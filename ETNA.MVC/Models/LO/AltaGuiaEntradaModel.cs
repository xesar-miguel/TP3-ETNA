using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ETNA.MVC.Models.LO
{
    public class AltaGuiaEntradaModel
    {
        public bool Rechazar { get; set; }
        public int IdSolicitud { get; set; }
        public int IdAlmacen { get; set; }
        public string Observaciones { get; set; }
    }
}