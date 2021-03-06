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
    
    public partial class Entrega
    {
        public Entrega()
        {
            this.Backorder = new HashSet<Backorder>();
            this.EntregaDetalle = new HashSet<EntregaDetalle>();
        }
    
        public int Codigo { get; set; }
        public string Numero { get; set; }
        public Nullable<System.DateTime> FechaGeneracion { get; set; }
        public Nullable<System.DateTime> FechaEntrega { get; set; }
        public int idEstadoEntrega { get; set; }
        public int idZonaDespacho { get; set; }
        public int idMotivoTraslado { get; set; }
        public int idCliente { get; set; }
        public int idDireccion { get; set; }
    
        public virtual ICollection<Backorder> Backorder { get; set; }
        public virtual Cliente Cliente { get; set; }
        public virtual Direccion Direccion { get; set; }
        public virtual EstadoEntrega EstadoEntrega { get; set; }
        public virtual MotivoTraslado MotivoTraslado { get; set; }
        public virtual ZonaDespacho ZonaDespacho { get; set; }
        public virtual ICollection<EntregaDetalle> EntregaDetalle { get; set; }
    }
}
