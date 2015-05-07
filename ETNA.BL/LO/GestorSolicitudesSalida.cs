using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.LO
{
    public class GestorSolicitudesSalida
    {

        public List<SolicitudSalida> ObtenerSolicitudesSalida(int idSolicitud, int estadoSolicitud,
            DateTime fechaInicio, DateTime fechaFin, int idEmpleado, int tipoSalida, string direccionEntrega, 
            string razonSocialDestinatario)
        {
            var context = new ETNADbModelContainer();
            return context.SolicitudesSalida.Where(s =>
                (idSolicitud == 0 || s.Id == idSolicitud) &&
                //Aprobada o parcial.
                (s.Estado == 2 || s.Estado == 3) &&
                (fechaInicio == DateTime.MinValue || s.FechaElaboracion >= fechaInicio) &&
                (fechaFin == DateTime.MinValue || s.FechaElaboracion <= fechaFin) &&
                (tipoSalida == 0 || s.TipoSalida == tipoSalida) &&
                (String.IsNullOrEmpty(direccionEntrega) || s.DireccionEntrega.Equals(direccionEntrega)) &&
                (String.IsNullOrEmpty(razonSocialDestinatario) || s.RazonSocialDestinatario.Equals(razonSocialDestinatario)) &&
                (idEmpleado == 0 || s.Empleado.Id == idEmpleado)
                ).ToList();
        }

        public SolicitudSalida ObtenerSolicitudSalida(int idSolicitud)
        {
            var context = new ETNADbModelContainer();
            return context.SolicitudesSalida.Find(idSolicitud);
        }
    }
}
