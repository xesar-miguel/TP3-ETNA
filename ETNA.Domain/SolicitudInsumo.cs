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
    
    public partial class SolicitudInsumo
    {
        public SolicitudInsumo()
        {
            this.DetalleSolicitudInsumo = new HashSet<DetalleSolicitudInsumo>();
        }
    
        public int Id { get; set; }
    
        public virtual ICollection<DetalleSolicitudInsumo> DetalleSolicitudInsumo { get; set; }
        public virtual OrdenTrabajo OrdenTrabajo { get; set; }
    }
}
