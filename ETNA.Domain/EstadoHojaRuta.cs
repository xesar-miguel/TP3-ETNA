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
    
    public partial class EstadoHojaRuta
    {
        public EstadoHojaRuta()
        {
            this.HojaRuta = new HashSet<HojaRuta>();
        }
    
        public int Codigo { get; set; }
        public string Descripcion { get; set; }
        public string Abreviatura { get; set; }
    
        public virtual ICollection<HojaRuta> HojaRuta { get; set; }
    }
}
