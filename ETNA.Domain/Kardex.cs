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
    
    public partial class Kardex
    {
        public int Id { get; set; }
        public int TipoMovimiento { get; set; }
        public string Cantidad { get; set; }
        public double ValorUnitario { get; set; }
    
        public virtual DocumentoReferencia DocumentoReferencia { get; set; }
        public virtual Almacen Almacen { get; set; }
        public virtual Producto Producto { get; set; }
    }
}
