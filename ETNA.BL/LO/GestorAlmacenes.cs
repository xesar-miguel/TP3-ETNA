using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.LO
{
    public class GestorAlmacenes
    {
        public List<Almacen> ObtenerAlmacenesPorEmpleado(int idEmpleado)
        {
            var context = new ETNADbModelContainer();
            return context.Almacenes.Where(a => a.Empleado.Any(e => e.Id == idEmpleado)).ToList();
        }

        public Almacen ObtenerAlmacen(int idAlmacen)
        {
            var context = new ETNADbModelContainer();
            return context.Almacenes.Find(idAlmacen);
        }
    }
}
