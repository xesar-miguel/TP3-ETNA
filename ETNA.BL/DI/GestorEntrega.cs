﻿using ETNA.DAL;
using ETNA.Domain;
using System;
using System.Collections.Generic;
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

    }
}