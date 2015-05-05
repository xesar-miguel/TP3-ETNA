using ETNA.DAL;
using ETNA.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ETNA.BL.DI
{
    public class GestorCliente
    {

        public List<Cliente> ObtenerClientes()
        {
            var context = new ETNADbModelContainer();
            return context.Cliente.ToList();
        }

    }
}
