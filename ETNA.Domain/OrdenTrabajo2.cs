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
    
    public partial class OrdenTrabajo2
    {
        public OrdenTrabajo2()
        {
            this.DetalleOrdenTrabajoInsumo = new HashSet<DetalleOrdenTrabajoInsumo2>();
            this.DetalleOrdenTrabajoPersonal = new HashSet<DetalleOrdenTrabajoPersonal2>();
            this.ParteProduccion = new HashSet<ParteProduccion2>();
            this.SolicitudInsumo = new HashSet<SolicitudInsumo2>();
        }
    
        public int Id { get; set; }
        public string Glosa { get; set; }
        public Nullable<System.DateTime> FechaExpedicion { get; set; }
        public Nullable<System.DateTime> FechaInicio { get; set; }
        public Nullable<System.DateTime> FechaTermino { get; set; }
        public int CantidadSolicitada { get; set; }
        public string Estado { get; set; }
        public int Empleado_Id { get; set; }
        public int Lote_Id { get; set; }
    
        public virtual ICollection<DetalleOrdenTrabajoInsumo2> DetalleOrdenTrabajoInsumo { get; set; }
        public virtual ICollection<DetalleOrdenTrabajoPersonal2> DetalleOrdenTrabajoPersonal { get; set; }
        public virtual ICollection<ParteProduccion2> ParteProduccion { get; set; }
        public virtual ICollection<SolicitudInsumo2> SolicitudInsumo { get; set; }
    }
}
