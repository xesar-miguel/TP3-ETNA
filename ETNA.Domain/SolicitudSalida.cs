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
    
    public partial class SolicitudSalida
    {
        public SolicitudSalida()
        {
            this.GuiaSalida = new HashSet<GuiaSalida>();
            this.DetalleSolicitudSalida = new HashSet<DetalleSolicitudSalida>();
            this.DetalleOrdenTrabajo = new HashSet<DetalleOrdenTrabajo>();
        }
    
        public int Id { get; set; }
        public System.DateTime FechaElaboracion { get; set; }
        public string DireccionEntrega { get; set; }
        public string RazonSocialDestinatario { get; set; }
        public int TipoSalida { get; set; }
        public int Estado { get; set; }
        public string Observaciones { get; set; }
    
        public virtual Empleado Empleado { get; set; }
        public virtual ICollection<GuiaSalida> GuiaSalida { get; set; }
        public virtual ICollection<DetalleSolicitudSalida> DetalleSolicitudSalida { get; set; }
        public virtual ICollection<DetalleOrdenTrabajo> DetalleOrdenTrabajo { get; set; }
    }
}
