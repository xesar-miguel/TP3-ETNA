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
        public int Id { get; set; }
        public string NroLote { get; set; }
        public System.DateTime FechaCreacion { get; set; }
    
        public virtual TipoLote TipoLote { get; set; }
    }
}
