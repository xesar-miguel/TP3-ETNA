using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ETNA.MVC.Models.FB
{
    public class LoteViewModel
    {
        [Key]
        public int Id { get; set; }

        [DisplayName("Número Lote")]
        public string NroLote { get; set; }

        [DisplayName("Fecha de Creación")]
        public System.DateTime FechaCreacion { get; set; }

        [DisplayName("Tipo de Lote")]
        public string DescripcionTipoLote { get; set; }
    }
}
    
