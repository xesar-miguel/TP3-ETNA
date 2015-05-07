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
    
    public partial class OrdenTrabajo
    {
        public OrdenTrabajo()
        {
            this.DetalleOrdenTrabajo = new HashSet<DetalleOrdenTrabajo>();
            this.OrdenTrabajoInsumo = new HashSet<OrdenTrabajoInsumo>();
            this.OrdenTrabajoMaquinaria = new HashSet<OrdenTrabajoMaquinaria>();
            this.OrdenTrabajoPersonal = new HashSet<OrdenTrabajoPersonal>();
        }
    
        public int IdOrden { get; set; }
        public int IdLinea { get; set; }
        public string Glosa { get; set; }
        public System.DateTime FechaExpedicion { get; set; }
        public System.DateTime FechaInicio { get; set; }
        public System.DateTime FechaTermino { get; set; }
        public int CantidadSolicitada { get; set; }
        public int Estado { get; set; }
    
        public virtual LoteProduccion LoteProduccion { get; set; }
        public virtual DetalleSolicitudProduccion DetalleSolicitudProduccion { get; set; }
        public virtual ICollection<DetalleOrdenTrabajo> DetalleOrdenTrabajo { get; set; }
        public virtual SolicitudReprogramacion SolicitudReprogramacion { get; set; }
        public virtual ICollection<OrdenTrabajoInsumo> OrdenTrabajoInsumo { get; set; }
        public virtual ICollection<OrdenTrabajoMaquinaria> OrdenTrabajoMaquinaria { get; set; }
        public virtual ICollection<OrdenTrabajoPersonal> OrdenTrabajoPersonal { get; set; }
        public virtual ParteProduccion ParteProduccion { get; set; }
        public virtual LineaProduccion LineaProduccion { get; set; }
    }
}
