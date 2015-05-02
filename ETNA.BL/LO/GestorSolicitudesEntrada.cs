using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.LO
{
    public class GestorSolicitudesEntrada
    {
        public List<SolicitudEntrada> ObtenerSolicitudesEntrada(int idSolicitud, int estadoSolicitud,
            DateTime fechaInicio, DateTime fechaFin, int idEmpleado, int tipoEntrada)
        {
            var context = new ETNADbModelContainer();
            return context.SolicitudesEntrada.Where(s => 
                (idSolicitud == 0 || s.Id == idSolicitud) &&
                (estadoSolicitud == 0 || s.Estado == estadoSolicitud) &&
                (fechaInicio == DateTime.MinValue || s.FechaElaboracion >= fechaInicio) &&
                (fechaFin == DateTime.MinValue || s.FechaElaboracion <= fechaFin) &&
                (tipoEntrada == 0 || s.TipoEntrada == tipoEntrada) &&
                (idEmpleado == 0 || s.Empleado.Id == idEmpleado) 
                ).ToList();
        }

        public SolicitudEntrada ObtenerSolicitudEntrada(int idSolicitud)
        {
            var context = new ETNADbModelContainer();
            return context.SolicitudesEntrada.Find(idSolicitud);
        }
    }
}
