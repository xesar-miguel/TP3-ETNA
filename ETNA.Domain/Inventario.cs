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
    
    public partial class Inventario
    {
        public Inventario()
        {
            this.Empleado = new HashSet<Empleado>();
            this.DetalleInventario = new HashSet<DetalleInventario>();
        }
    
        public int Id { get; set; }
        public string FechaProgramacion { get; set; }
        public string TipoInventario { get; set; }
        public string EstadoInventario { get; set; }
    
        public virtual ICollection<Empleado> Empleado { get; set; }
        public virtual Almacen Almacen { get; set; }
        public virtual ICollection<DetalleInventario> DetalleInventario { get; set; }
    }
}
