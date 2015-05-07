﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ETNA.DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using ETNA.Domain;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class ETNADbModelContainer : DbContext
    {
        public ETNADbModelContainer()
            : base("name=ETNADbModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<DocumentoReferencia> DocumentosReferencia { get; set; }
        public DbSet<Almacen> Almacenes { get; set; }
        public DbSet<UserProfile> UserProfile { get; set; }
        public DbSet<webpages_Membership> webpages_Membership { get; set; }
        public DbSet<webpages_OAuthMembership> webpages_OAuthMembership { get; set; }
        public DbSet<webpages_Roles> webpages_Roles { get; set; }
        public DbSet<Empleado> Empleados { get; set; }
        public DbSet<Producto> Productos { get; set; }
        public DbSet<SolicitudEntrada> SolicitudesEntrada { get; set; }
        public DbSet<DetalleSolicitudEntrada> DetalleSolicitudEntrada { get; set; }
        public DbSet<Kardex> Kardex { get; set; }
        public DbSet<LoteProduccion> LoteProduccionSet { get; set; }
        public DbSet<SolicitudSalida> SolicitudesSalida { get; set; }
        public DbSet<DetalleSolicitudSalida> DetalleSolicitudSalida { get; set; }
        public DbSet<DetalleGuiaSalida> DetalleGuiaSalida { get; set; }
        public DbSet<DetalleOrdenTrabajo> DetalleOrdenTrabajoSet { get; set; }
        public DbSet<OrdenTrabajoInsumo> OrdenTrabajoInsumoSet { get; set; }
        public DbSet<ParteProduccion> ParteProduccionSet { get; set; }
        public DbSet<OrdenTrabajo> OrdenTrabajoSet { get; set; }
        public DbSet<OrdenTrabajoPersonal> OrdenTrabajoPersonalSet { get; set; }
        public DbSet<SolicitudProduccion> SolicitudProduccionSet { get; set; }
        public DbSet<PlanProduccion> PlanProduccionSet { get; set; }
        public DbSet<PlanProduccionMaquinaria> PlanProduccionMaquinariaSet { get; set; }
        public DbSet<DetalleSolicitudProduccion> DetalleSolicitudProduccionSet { get; set; }
        public DbSet<OrdenTrabajoMaquinaria> OrdenTrabajoMaquinariaSet { get; set; }
        public DbSet<Maquinaria> MaquinariaSet { get; set; }
        public DbSet<Backorder> Backorder { get; set; }
        public DbSet<Calendario> Calendario { get; set; }
        public DbSet<Cargo> Cargo { get; set; }
        public DbSet<Cliente> Cliente { get; set; }
        public DbSet<Direccion> Direccion { get; set; }
        public DbSet<DisponibilidadRecurso> DisponibilidadRecurso { get; set; }
        public DbSet<DisponibilidadTransporte> DisponibilidadTransporte { get; set; }
        public DbSet<Entrega> Entrega { get; set; }
        public DbSet<EntregaDetalle> EntregaDetalle { get; set; }
        public DbSet<EstadoCliente> EstadoCliente { get; set; }
        public DbSet<EstadoEntrega> EstadoEntrega { get; set; }
        public DbSet<EstadoFactura> EstadoFactura { get; set; }
        public DbSet<EstadoHojaRuta> EstadoHojaRuta { get; set; }
        public DbSet<EstadoHojaRutaDetalle> EstadoHojaRutaDetalle { get; set; }
        public DbSet<EstadoPedido> EstadoPedido { get; set; }
        public DbSet<Factura> Factura { get; set; }
        public DbSet<FacturaDetalle> FacturaDetalle { get; set; }
        public DbSet<FacturaEntrega> FacturaEntrega { get; set; }
        public DbSet<HojaRuta> HojaRuta { get; set; }
        public DbSet<HojaRutaDetalle> HojaRutaDetalle { get; set; }
        public DbSet<HojaRutaRecurso> HojaRutaRecurso { get; set; }
        public DbSet<Marca> Marca { get; set; }
        public DbSet<MotivoTraslado> MotivoTraslado { get; set; }
        public DbSet<Parametro> Parametro { get; set; }
        public DbSet<Pedido> Pedido { get; set; }
        public DbSet<PedidoDetalle> PedidoDetalle { get; set; }
        public DbSet<PedidoEntrega> PedidoEntrega { get; set; }
        public DbSet<ProductoBackOrder> ProductoBackOrder { get; set; }
        public DbSet<TipoCliente> TipoCliente { get; set; }
        public DbSet<TipoDireccion> TipoDireccion { get; set; }
        public DbSet<TipoDocumento> TipoDocumento { get; set; }
        public DbSet<TipoPedido> TipoPedido { get; set; }
        public DbSet<TipoTransporte> TipoTransporte { get; set; }
        public DbSet<Transporte> Transporte { get; set; }
        public DbSet<Ubigeo> Ubigeo { get; set; }
        public DbSet<ZonaDespacho> ZonaDespacho { get; set; }
        public DbSet<StockProducto> StockProductos { get; set; }
        public DbSet<Inventario> Inventarios { get; set; }
        public DbSet<DetalleInventario> DetalleInventario { get; set; }
        public DbSet<PlanProduccionInsumo> PlanProduccionInsumoSet { get; set; }
        public DbSet<PlanProduccionPersonal> PlanProduccionPersonalSet { get; set; }
        public DbSet<SolicitudReprogramacion> SolicitudReprogramacionSet { get; set; }
        public DbSet<TipoProducto> TipoProductoSet { get; set; }
        public DbSet<LineaProduccion> LineaProduccionSet { get; set; }
        public DbSet<DetallePlanProduccion> DetallePlanProduccionSet { get; set; }
    
        public virtual int generarEntregasFactura(Nullable<System.DateTime> p_fechaInicio, Nullable<System.DateTime> p_FechaFin)
        {
            var p_fechaInicioParameter = p_fechaInicio.HasValue ?
                new ObjectParameter("p_fechaInicio", p_fechaInicio) :
                new ObjectParameter("p_fechaInicio", typeof(System.DateTime));
    
            var p_FechaFinParameter = p_FechaFin.HasValue ?
                new ObjectParameter("p_FechaFin", p_FechaFin) :
                new ObjectParameter("p_FechaFin", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("generarEntregasFactura", p_fechaInicioParameter, p_FechaFinParameter);
        }
    }
}
