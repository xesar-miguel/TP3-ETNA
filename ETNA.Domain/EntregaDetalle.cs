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
    
    public partial class EntregaDetalle
    {
        public EntregaDetalle()
        {
            this.FacturaEntrega = new HashSet<FacturaEntrega>();
            this.PedidoEntrega = new HashSet<PedidoEntrega>();
        }
    
        public int Codigo { get; set; }
        public Nullable<int> NroItem { get; set; }
        public Nullable<int> CantidadEntregaProg { get; set; }
        public Nullable<int> CantidadEntregada { get; set; }
        public Nullable<int> CantidadRechazada { get; set; }
        public Nullable<int> CantidadEmbarcada { get; set; }
        public Nullable<int> CantidadConfirmada { get; set; }
        public int idEntrega { get; set; }
        public int idProducto { get; set; }
    
        public virtual Entrega Entrega { get; set; }
        public virtual Producto Productos { get; set; }
        public virtual ICollection<FacturaEntrega> FacturaEntrega { get; set; }
        public virtual ICollection<PedidoEntrega> PedidoEntrega { get; set; }
    }
}
