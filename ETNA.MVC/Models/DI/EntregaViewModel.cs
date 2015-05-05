using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ETNA.MVC.Models.DI
{
    public class EntregaViewModel
    {
        [Key]
        [DisplayName("Código solicitud")]
        public int Id { get; set; }
    }
}