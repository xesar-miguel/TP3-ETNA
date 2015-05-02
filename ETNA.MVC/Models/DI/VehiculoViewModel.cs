using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ETNA.MVC.Models.DI
{
    public class VehiculoViewModel
    {
        [Key]
        [DisplayName("Cód. Vehiculo")]
        public int id { get; set; }
           [DisplayName("Marca del auto")]
        public string marca { get; set; }
        [DisplayName("Placa")]
        public string placa { get; set; }
    }
}