using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.LO
{
    public class GestorEmpleados
    {
        public List<Empleado> ObtenerEmpleados()
        {
            var context = new ETNADbModelContainer();
            return context.Empleados.ToList();
        }
    }
}
