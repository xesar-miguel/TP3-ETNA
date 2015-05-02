using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ETNA.Common;
using ETNA.DAL;
using ETNA.Domain;

namespace ETNA.BL.LO
{
    public class GestorGuiasEntrada
    {
        public bool GenerarGuiaEntrada(int idSolicitud, int idAlmacen, int idEmpleado)
        {
            //NOTA: Cada vez que guardamos algo, usar este bloque try catch para poder saber por qué dió excepción (si es que da)
            try
            {
                // Crear guía de entrada
                var context = new ETNADbModelContainer();
                var guiaEntrada = new GuiaEntrada();
                guiaEntrada.FechaElaboracion = DateTime.Now;
                guiaEntrada.IdentificadorDocumento = "GE-" + guiaEntrada.FechaElaboracion.ToString("MMddyyHmmss");
                guiaEntrada.SolicitudEntrada = context.SolicitudesEntrada.Find(idSolicitud);
                guiaEntrada.Almacen = context.Almacenes.Find(idAlmacen);
                guiaEntrada.Empleado = context.Empleados.Find(idEmpleado);
                context.DocumentosReferencia.Add(guiaEntrada);

                // Actualizar estado de la solicitud
                guiaEntrada.SolicitudEntrada.Estado = (int)Enums.EstadoSolicitudEntrada.Atendida;

                //Generar Kardex por cada producto
                var detalleSolicitud = context.DetalleSolicitudEntrada.Where(d => d.IdSolicitudEntrada == idSolicitud).ToList();

                foreach (var detalle in detalleSolicitud)
                {
                    var kardex = new Kardex();
                    kardex.Almacen = context.Almacenes.Find(idAlmacen);
                    kardex.DocumentoReferencia = guiaEntrada;
                    kardex.Producto = detalle.Producto;
                    kardex.Cantidad = detalle.Cantidad;
                    kardex.ValorUnitario = detalle.Producto.PrecioListaCompra;
                    kardex.TipoMovimiento = (int)Enums.TipoMovimiento.Entrada;
                    context.Kardex.Add(kardex);
                }

                context.SaveChanges();
                return true;
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state has the following validation errors:",
                        eve.Entry.Entity.GetType().Name);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }

        public bool RechazarGuiaEntrada(int idSolicitud, string observaciones)
        {
            var context = new ETNADbModelContainer();
            var solicitud = context.SolicitudesEntrada.Find(idSolicitud);
            solicitud.Observaciones = observaciones;
            solicitud.Estado = (int) Enums.EstadoSolicitudEntrada.Rechazada;
            context.SaveChanges();
            return true;
        }
    }
}
