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
    
    public partial class Backorder
    {
        public Backorder()
        {
            this.ProductoBackOrder = new HashSet<ProductoBackOrder>();
        }
    
        public int Codigo { get; set; }
        public int idEntrega { get; set; }
        public Nullable<System.DateTime> FechaEmision { get; set; }
    
        public virtual Entrega Entrega { get; set; }
        public virtual ICollection<ProductoBackOrder> ProductoBackOrder { get; set; }
    }
}