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
    
    public partial class DetalleSolicitudEntrada
    {
        public int IdProducto { get; set; }
        public int IdSolicitudEntrada { get; set; }
        public string Cantidad { get; set; }
    
        public virtual SolicitudEntrada SolicitudEntrada { get; set; }
        public virtual Producto Producto { get; set; }
    }
}
