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
    
    public partial class OrdenTrabajoMaquinaria
    {
        public int IdOrden { get; set; }
        public int IdLinea { get; set; }
        public int IdMaquinaria { get; set; }
        public System.DateTime FechaInicio { get; set; }
        public System.DateTime FechaTermino { get; set; }
        public int Cantidad { get; set; }
        public int Estado { get; set; }
    
        public virtual OrdenTrabajo OrdenTrabajo { get; set; }
        public virtual Maquinaria Maquinaria { get; set; }
    }
}
