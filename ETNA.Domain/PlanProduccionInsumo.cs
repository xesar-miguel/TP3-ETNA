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
    
    public partial class PlanProduccionInsumo
    {
        public int IdProgramacion { get; set; }
        public int IdPlan { get; set; }
        public int IdLinea { get; set; }
        public int IdProducto { get; set; }
        public System.DateTime FechaEntrega { get; set; }
        public int Cantidad { get; set; }
        public int Estado { get; set; }
    
        public virtual PlanProduccion PlanProduccion { get; set; }
        public virtual Producto Producto { get; set; }
        public virtual LineaProduccion LineaProduccion { get; set; }
    }
}
