//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ETNA.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class Lote
    {
        public Lote()
        {
            this.OrdenTrabajo = new HashSet<OrdenTrabajo>();
        }
    
        public int Id { get; set; }
        public string NroLote { get; set; }
        public System.DateTime FechaCreacion { get; set; }
    
        public virtual SolicitudProduccion SolicitudProduccion { get; set; }
        public virtual ICollection<OrdenTrabajo> OrdenTrabajo { get; set; }
    }
}
