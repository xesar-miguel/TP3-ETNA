using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.DI
{
    public class GestorVehiculos
    {
        public List<Vehiculo> Listar()
        {
            var context = new ETNADbModelContainer();
            return context.Vehiculos.ToList();
        }

        public int InsertarVehiculo(string marca, string placa)
        {
            var context = new ETNADbModelContainer();
            var newVehiculo = new Vehiculo();
            newVehiculo.marca = marca;
            newVehiculo.placa = placa;
            context.Vehiculos.Add(newVehiculo);
            context.SaveChanges();
            return newVehiculo.id;
        }          

    }
}
