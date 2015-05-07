using System;
using System.ComponentModel;
using System.Reflection;

namespace ETNA.Common
{
    public static class Enums
    {
        // Para obtener una descripción del enumerador utilizar:
        // Enums.GetEnumDescription((MyEnum)value);

        //hola

        #region Común
        public enum EstadoProducto
        {
            [Description("Inactivo")]
            Inactivo = 0,
            [Description("Activo")]
            Activo = 1
        }
        #endregion

        #region Logística
        public enum TipoEntrada
        {
            [Description("Compra")]
            Compra = 1,
            [Description("Producción Propia")]
            ProduccionPropia = 2,
            [Description("Traslado entre almacenes")]
            TrasladoEntreAlmacenes = 3,
        }

        public enum TipoSalida
        {
            [Description("Venta")]
            Venta = 1,
            [Description("Reposición en tienda")]
            Reposicion = 2,
            [Description("Movimiento entre almacenes")]
            MovimientoEntreAlmacenes = 3,
        }

        public enum EstadoSolicitudEntrada
        {
            [Description("Pendiente")]
            Pendiente = 1,
            [Description("Aprobada")]
            Aprobada = 2,
            [Description("Observada")]
            Observada = 3,
            [Description("Rechazada")]
            Rechazada = 4,
            [Description("Atendida")]
            Atendida = 5
        }

        public enum EstadoSolicitudSalida
        {
            [Description("Pendiente")]
            Pendiente = 1,
            [Description("Aprobada")]
            Aprobada = 2,
            [Description("Atendida parcialmente")]
            Parcialmente = 3,
            [Description("Atendida")]
            Atendida = 4
        }

        public enum TipoMovimiento
        {
            [Description("Entrada")]
            Entrada = 1,
            [Description("Salida")]
            Salida = 2,
            [Description("Ajuste de Inventario")]
            AjusteInventario = 3
        }


        public enum PlanProduccion
        {
            [Description("Libre")]
            Generado = 1,
            [Description("Asociado")]
            Pendiente = 2,
            [Description("Finalizado")]
            Finalizado = 3
        }

        public enum SolicitudProduccion
        {
            [Description("Registrado")]
            Generado = 1,
            [Description("Pendiente")]
            Pendiente = 2,
            [Description("Aprobado")]
            Aprobado = 3,
            [Description("Aprobado Forzado")]
            AprobadoForzado = 4,
            [Description("En Atención")]
            EnAtencion = 5,
            [Description("Finalizado")]
            Finalizado = 6
        }

        public enum OrdenTrabajo
        {
            [Description("Generado")]
            Generado = 1,
            [Description("Pendiente")]
            Pendiente = 2,
            [Description("En Atención")]
            EnAtencion = 3,
            [Description("Finalizado")]
            Finalizado = 4
        }

        #endregion

        public static string GetEnumDescription(Enum value)
        {
            FieldInfo fi = value.GetType().GetField(value.ToString());

            var attributes =
                (DescriptionAttribute[])fi.GetCustomAttributes(
                typeof(DescriptionAttribute),
                false);

            if (attributes != null &&
                attributes.Length > 0)
                return attributes[0].Description;
            else
                return value.ToString();
        }

    }
}