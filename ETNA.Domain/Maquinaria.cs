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
    
    public partial class Maquinaria
    {
        public Maquinaria()
        {
            this.PlanProduccionMaquinaria = new HashSet<PlanProduccionMaquinaria>();
            this.OrdenTrabajoMaquinaria = new HashSet<OrdenTrabajoMaquinaria>();
        }
    
        public int IdMaquinaria { get; set; }
        public string Descripcion { get; set; }
        public int Tipo { get; set; }
        public int Estado { get; set; }
    
        public virtual ICollection<PlanProduccionMaquinaria> PlanProduccionMaquinaria { get; set; }
        public virtual ICollection<OrdenTrabajoMaquinaria> OrdenTrabajoMaquinaria { get; set; }
    }
}
