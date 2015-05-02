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
    public class GestorGuiasSalida
    {
        public bool GenerarGuiaSalida(int idSolicitud, int idAlmacen, int idEmpleado)
        {
            //NOTA: Cada vez que guardamos algo, usar este bloque try catch para poder saber por qué dió excepción (si es que da)
            try
            {
                // Crear guía de salida
                var context = new ETNADbModelContainer();
                var guiaSalida = new GuiaSalida();
                guiaSalida.FechaElaboracion = DateTime.Now;
                guiaSalida.IdentificadorDocumento = "GS-" + guiaSalida.FechaElaboracion.ToString("MMddyyHmmss");
                guiaSalida.SolicitudSalida = context.SolicitudSalidaConjunto.Find(idSolicitud);
                guiaSalida.Almacen = context.Almacenes.Find(idAlmacen);
                guiaSalida.Empleado = context.Empleados.Find(idEmpleado);
                context.DocumentosReferencia.Add(guiaSalida);
                // Actualizar estado de la solicitud
                guiaSalida.SolicitudSalida.Estado = (int)Enums.EstadoSolicitudSalida.Atendida;

                //Generar Kardex por cada producto
                var detalleSolicitud = context.DetalleSolicitudSalidaConjunto.Where(d => d.IdSolicitudSalida == idSolicitud).ToList();

                
                foreach (var detalle in detalleSolicitud)
                {
                    var kardex = new Kardex();
                    kardex.Almacen = context.Almacenes.Find(idAlmacen);
                    kardex.DocumentoReferencia = guiaSalida;
                    kardex.Producto = detalle.Producto;
                    kardex.Cantidad = detalle.Cantidad.ToString();
                    kardex.ValorUnitario = detalle.Producto.PrecioListaVenta;
                    kardex.TipoMovimiento = (int)Enums.TipoMovimiento.Salida;
                    context.Kardex.Add(kardex);

                    //En guia de salida completa la cantidad final siempre va a ser 0
                    detalle.CantidadFinal = 0;

                    //Generando el detalle de guia de salida
                    var detalleGuiaSalida = new DetalleGuiaSalida();
                    detalleGuiaSalida.GuiaSalida = guiaSalida;
                    detalleGuiaSalida.IdProducto = detalle.IdProducto;
                    detalleGuiaSalida.Cantidad = detalle.CantidadFinal;
                    context.DetalleGuiaSalidaConjunto.Add(detalleGuiaSalida);
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

        public bool GenerarGuiaSalidaParcial(int idSolicitud, int idAlmacen, int idEmpleado, Dictionary<int, object> listProductos)
        {
            //NOTA: Cada vez que guardamos algo, usar este bloque try catch para poder saber por qué dió excepción (si es que da)
            try
            {
                // Crear guía de entrada
                var context = new ETNADbModelContainer();
                var guiaSalida = new GuiaSalida();
                guiaSalida.FechaElaboracion = DateTime.Now;
                guiaSalida.IdentificadorDocumento = "GS-" + guiaSalida.FechaElaboracion.ToString("MMddyyHmmss");
                guiaSalida.SolicitudSalida = context.SolicitudSalidaConjunto.Find(idSolicitud);
                guiaSalida.Almacen = context.Almacenes.Find(idAlmacen);
                guiaSalida.Empleado = context.Empleados.Find(idEmpleado);
                context.DocumentosReferencia.Add(guiaSalida);
                
                var detalleSolicitud = context.DetalleSolicitudSalidaConjunto.Where(d => d.IdSolicitudSalida == idSolicitud).ToList();
                bool parcial = false;
                // Actualizar estado de la solicitud

                foreach (var solicitudEstado in detalleSolicitud)
                {

                    foreach (var cantidadesSolicitudEstado in listProductos)
                    {
                        if (solicitudEstado.IdProducto == cantidadesSolicitudEstado.Key)
                        {
                            if ((solicitudEstado.CantidadFinal - (int)cantidadesSolicitudEstado.Value) > 0)
                            {
                                parcial = true;
                            }
                        }
                    }
                    
                }

                if (parcial)
                {
                    guiaSalida.SolicitudSalida.Estado = (int)Enums.EstadoSolicitudSalida.Parcialmente;
                }
                else
                {
                    guiaSalida.SolicitudSalida.Estado = (int)Enums.EstadoSolicitudSalida.Atendida;
                }

                foreach (var detalle in detalleSolicitud)
                {
                    //Generar Kardex por cada producto
                    var kardex = new Kardex();
                    kardex.Almacen = context.Almacenes.Find(idAlmacen);
                    kardex.DocumentoReferencia = guiaSalida;
                    kardex.Producto = detalle.Producto;
                    kardex.Cantidad = detalle.Cantidad.ToString();
                    kardex.ValorUnitario = detalle.Producto.PrecioListaVenta;
                    kardex.TipoMovimiento = (int)Enums.TipoMovimiento.Salida;
                    context.Kardex.Add(kardex);
                    
                    //Colocar las cantidades parciales de salida
                    foreach (var cantidades in listProductos)
                    {
                        if (detalle.IdProducto == cantidades.Key)
                        {
                            detalle.CantidadFinal = detalle.CantidadFinal - (int)cantidades.Value;
                        }
                    }

                    //Generando el detalle de guia de salida
                    var detalleGuiaSalida = new DetalleGuiaSalida();
                    detalleGuiaSalida.GuiaSalida = guiaSalida;
                    detalleGuiaSalida.IdProducto = detalle.IdProducto;
                    detalleGuiaSalida.Cantidad = detalle.CantidadFinal;
                    context.DetalleGuiaSalidaConjunto.Add(detalleGuiaSalida);
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
    }
}
