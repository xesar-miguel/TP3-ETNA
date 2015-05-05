using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace ETNA.MVC.Models.DI
{
    public class ClienteViewModel
    {
        [Key]
        [DisplayName("Codigo")]
        public int Codigo { get; set; }

        [DisplayName("Cliente")]
        public string Nombre { get; set; }

    }
}