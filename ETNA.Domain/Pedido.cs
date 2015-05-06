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
    
    public partial class Pedido
    {
        public Pedido()
        {
            this.PedidoDetalle = new HashSet<PedidoDetalle>();
        }
    
        public int Codigo { get; set; }
        public string Numero { get; set; }
        public Nullable<System.DateTime> FechaEmision { get; set; }
        public Nullable<decimal> ValorBruto { get; set; }
        public Nullable<decimal> MontoDescuento { get; set; }
        public Nullable<decimal> ValorNeto { get; set; }
        public Nullable<decimal> ValorIGV { get; set; }
        public Nullable<decimal> ImporteTotal { get; set; }
        public int idCliente { get; set; }
        public int idEstadoPedido { get; set; }
        public int idTipoPedido { get; set; }
        public int idDireccion { get; set; }
    
        public virtual Cliente Cliente { get; set; }
        public virtual Direccion Direccion { get; set; }
        public virtual EstadoPedido EstadoPedido { get; set; }
        public virtual TipoPedido TipoPedido { get; set; }
        public virtual ICollection<PedidoDetalle> PedidoDetalle { get; set; }
    }
}
