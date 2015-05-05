using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ETNA.MVC.Models.DI
{
    public class FiltradoEntregasViewModel
    {
        [DisplayName("Cliente")]
        public string IdCliente { get; set; }

        [DisplayName("Estado")]
        public string IdEstadoEntrega { get; set; }

        [DisplayName("Fecha Inicio")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime? FechaInicio { get; set; }

        [DisplayName("Fecha Fin")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime? FechaFin { get; set; }

        public List<ListaEntregaViewModel> ListaInicial;

        public IEnumerable<SelectListItem> Clientes { get; set; }
        public IEnumerable<SelectListItem> EstadosEntrega { get; set; }
    }
}