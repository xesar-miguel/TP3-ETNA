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
    
    public partial class SolicitudProduccion
    {
        public SolicitudProduccion()
        {
            this.LoteProduccion = new HashSet<LoteProduccion>();
            this.DetalleSolicitudProduccion = new HashSet<DetalleSolicitudProduccion>();
        }
    
        public int IdSolicitud { get; set; }
        public string Glosa { get; set; }
        public System.DateTime FechaSolicitud { get; set; }
        public string Observacion { get; set; }
        public int Estado { get; set; }
    
        public virtual PlanProduccion PlanProduccion { get; set; }
        public virtual ICollection<LoteProduccion> LoteProduccion { get; set; }
        public virtual ICollection<DetalleSolicitudProduccion> DetalleSolicitudProduccion { get; set; }
    }
}
