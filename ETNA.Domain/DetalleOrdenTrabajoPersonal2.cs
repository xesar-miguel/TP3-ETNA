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
    
    public partial class DetalleOrdenTrabajoPersonal2
    {
        public int Id { get; set; }
        public int Cantidad { get; set; }
        public int OrdenTrabajo_Id { get; set; }
        public int Empleado_Id { get; set; }
    
        public virtual Empleado Empleados { get; set; }
        public virtual OrdenTrabajo2 OrdenTrabajo { get; set; }
    }
}