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
    
    public partial class SolicitudInsumo1
    {
        public SolicitudInsumo1()
        {
            this.DetalleSolicitudInsumo = new HashSet<DetalleSolicitudInsumo1>();
        }
    
        public int Id { get; set; }
        public string Glosa { get; set; }
        public Nullable<System.DateTime> FechaSolicitud { get; set; }
        public Nullable<System.DateTime> FechaEntrega { get; set; }
        public string Comentario { get; set; }
        public string Estado { get; set; }
        public int Empleado_Id { get; set; }
        public int OrdenTrabajo_Id { get; set; }
    
        public virtual ICollection<DetalleSolicitudInsumo1> DetalleSolicitudInsumo { get; set; }
        public virtual OrdenTrabajo1 OrdenTrabajo { get; set; }
    }
}