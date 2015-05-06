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
    
    public partial class Empleado
    {
        public Empleado()
        {
            this.Almacen = new HashSet<Almacen>();
            this.DocumentoReferencia = new HashSet<DocumentoReferencia>();
            this.SolicitudEntrada = new HashSet<SolicitudEntrada>();
            this.SolicitudSalida = new HashSet<SolicitudSalida>();
            this.DisponibilidadRecurso = new HashSet<DisponibilidadRecurso>();
            this.HojaRutaRecurso = new HashSet<HojaRutaRecurso>();
        }
    
        public int Id { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Direccion { get; set; }
        public string Cargo { get; set; }
        public string Dni { get; set; }
        public string Correo { get; set; }
        public string Telefono { get; set; }
        public Nullable<int> idCargo { get; set; }
    
        public virtual UserProfile UserProfile { get; set; }
        public virtual ICollection<Almacen> Almacen { get; set; }
        public virtual ICollection<DocumentoReferencia> DocumentoReferencia { get; set; }
        public virtual ICollection<SolicitudEntrada> SolicitudEntrada { get; set; }
        public virtual ICollection<SolicitudSalida> SolicitudSalida { get; set; }
        public virtual Cargo Cargo1 { get; set; }
        public virtual ICollection<DisponibilidadRecurso> DisponibilidadRecurso { get; set; }
        public virtual ICollection<HojaRutaRecurso> HojaRutaRecurso { get; set; }
    }
}
