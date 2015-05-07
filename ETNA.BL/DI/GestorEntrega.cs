using ETNA.DAL;
using ETNA.Domain;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETNA.BL.DI
{
    public class GestorEntrega
    {
        public List<Entrega> ObtenerEntregas(DateTime fechaInicio, DateTime fechaFin,
             int idCliente, int idEstadoEntrega)
        {
            var context = new ETNADbModelContainer();
            return context.Entrega.Where(s =>
                (idCliente == 0 || s.idCliente == idCliente) &&
                (idEstadoEntrega == 0 || s.idEstadoEntrega == idEstadoEntrega) &&
                (fechaInicio == DateTime.MinValue || s.FechaGeneracion >= fechaInicio) &&
                (fechaFin == DateTime.MinValue || s.FechaGeneracion <= fechaFin)
                ).ToList();
        }

        public List<EstadoEntrega> ObtenerEstadosEntrega()
        {
            var context = new ETNADbModelContainer();
            return context.EstadoEntrega.ToList();
        }

        public Entrega ObtenerEntrega(int codigo)
        {
            var context = new ETNADbModelContainer();
            return context.Entrega.Find(codigo);
        }

        public List<EntregaDetalle> ObtenerEntregaDetalles(int idEntrega)
        {
            var context = new ETNADbModelContainer();
            return context.EntregaDetalle.Where(s =>
                (idEntrega == 0 || s.idEntrega == idEntrega)
                 ).ToList();
        }

        public int generarEntregasFactura(DateTime fechaInicio, DateTime fechaFin)
        {
            var context = new ETNADbModelContainer();

            int generar = context.generarEntregasFactura(fechaInicio,fechaFin);

            return generar;
        }

        public int generarEntregasPedido(DateTime fechaInicio, DateTime fechaFin)
        {
            var context = new ETNADbModelContainer();

            int generar = context.generarEntregasPedido(fechaInicio, fechaFin);

            return generar;
        }

        public bool modificarEntrega(int id, DateTime fechaEntrega)
        {
            var context = new ETNADbModelContainer();
            var entrega = context.Entrega.Find(id);
            entrega.FechaEntrega = fechaEntrega;
            context.SaveChanges();
            return true;
        }

        public bool eliminarEntrega(int id)
        {
            var context = new ETNADbModelContainer();
            var entrega = context.Entrega.Find(id);
            entrega.idEstadoEntrega = 4;
            context.SaveChanges();
            return true;
        }

    }
}
