//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ETNA.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class SolicitudEntrada
    {
        public SolicitudEntrada()
        {
            this.SolicitudEntradaProducto = new HashSet<DetalleSolicitudEntrada>();
        }
    
        public int Id { get; set; }
        public System.DateTime FechaElaboracion { get; set; }
        public int TipoEntrada { get; set; }
        public int Estado { get; set; }
        public string Observaciones { get; set; }
    
        public virtual GuiaEntrada GuiaEntrada { get; set; }
        public virtual ICollection<DetalleSolicitudEntrada> SolicitudEntradaProducto { get; set; }
        public virtual Empleado Empleado { get; set; }
    }
}
