using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ETNA.MVC.Models.LO
{
    public class AlmacenViewModel
    {
        [Key]
        [DisplayName("Código Almacén")]
        public int Id { get; set; }
        public string Nombre { get; set; }
        [DisplayName("Dirección")]
        public string Direccion { get; set; }
    }
}