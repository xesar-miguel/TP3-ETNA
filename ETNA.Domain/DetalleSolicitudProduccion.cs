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
    
    public partial class DetalleSolicitudProduccion
    {
        public DetalleSolicitudProduccion()
        {
            this.OrdenTrabajo = new HashSet<OrdenTrabajo>();
        }
    
        public int IdDetalle { get; set; }
        public string Estado { get; set; }
    
        public virtual ICollection<OrdenTrabajo> OrdenTrabajo { get; set; }
        public virtual SolicitudProduccion SolicitudProduccion { get; set; }
    }
}
