
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/05/2015 21:17:39
-- Generated from EDMX file: C:\Users\DiegoMartín\Documents\Visual Studio 2012\Projects\ETNA-GIT\ETNA.DAL\ETNADbModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ETNA.DB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DocumentoReferenciaAlmacen]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia] DROP CONSTRAINT [FK_DocumentoReferenciaAlmacen];
GO
IF OBJECT_ID(N'[dbo].[FK_webpages_UsersInRoles_webpages_Roles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [FK_webpages_UsersInRoles_webpages_Roles];
GO
IF OBJECT_ID(N'[dbo].[FK_webpages_UsersInRoles_UserProfile]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [FK_webpages_UsersInRoles_UserProfile];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoUserProfile]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_EmpleadoUserProfile];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoAlmacen_Empleado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadoAlmacen] DROP CONSTRAINT [FK_EmpleadoAlmacen_Empleado];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoAlmacen_Almacen]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadoAlmacen] DROP CONSTRAINT [FK_EmpleadoAlmacen_Almacen];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoDocumentoReferencia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia] DROP CONSTRAINT [FK_EmpleadoDocumentoReferencia];
GO
IF OBJECT_ID(N'[dbo].[FK_GuiaEntradaSolicitudEntrada]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada] DROP CONSTRAINT [FK_GuiaEntradaSolicitudEntrada];
GO
IF OBJECT_ID(N'[dbo].[FK_SolicitudEntradaSolicitudEntradaProducto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleSolicitudEntrada] DROP CONSTRAINT [FK_SolicitudEntradaSolicitudEntradaProducto];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductoSolicitudEntradaProducto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleSolicitudEntrada] DROP CONSTRAINT [FK_ProductoSolicitudEntradaProducto];
GO
IF OBJECT_ID(N'[dbo].[FK_DocumentoReferenciaKardex]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kardex] DROP CONSTRAINT [FK_DocumentoReferenciaKardex];
GO
IF OBJECT_ID(N'[dbo].[FK_AlmacenKardex]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kardex] DROP CONSTRAINT [FK_AlmacenKardex];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductoKardex]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kardex] DROP CONSTRAINT [FK_ProductoKardex];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadoSolicitudEntrada]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SolicitudesEntrada] DROP CONSTRAINT [FK_EmpleadoSolicitudEntrada];
GO
IF OBJECT_ID(N'[dbo].[FK_SolicitudSalidaEmpleado]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SolicitudSalidaConjunto] DROP CONSTRAINT [FK_SolicitudSalidaEmpleado];
GO
IF OBJECT_ID(N'[dbo].[FK_GuiaSalidaSolicitudSalida]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_GuiaSalida] DROP CONSTRAINT [FK_GuiaSalidaSolicitudSalida];
GO
IF OBJECT_ID(N'[dbo].[FK_DetalleSolicitudSalidaProducto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleSolicitudSalidaConjunto] DROP CONSTRAINT [FK_DetalleSolicitudSalidaProducto];
GO
IF OBJECT_ID(N'[dbo].[FK_DetalleSolicitudSalidaSolicitudSalida]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleSolicitudSalidaConjunto] DROP CONSTRAINT [FK_DetalleSolicitudSalidaSolicitudSalida];
GO
IF OBJECT_ID(N'[dbo].[FK_DetalleGuiaSalidaGuiaSalida]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleGuiaSalidaConjunto] DROP CONSTRAINT [FK_DetalleGuiaSalidaGuiaSalida];
GO
IF OBJECT_ID(N'[dbo].[FK_DetalleGuiaSalidaProducto]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleGuiaSalidaConjunto] DROP CONSTRAINT [FK_DetalleGuiaSalidaProducto];
GO
IF OBJECT_ID(N'[dbo].[FK_SolicitudProduccionDetalleSolicitudProduccion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleSolicitudProduccionSet] DROP CONSTRAINT [FK_SolicitudProduccionDetalleSolicitudProduccion];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdenTrabajoDetalleSolicitudProduccion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleSolicitudProduccionSet] DROP CONSTRAINT [FK_OrdenTrabajoDetalleSolicitudProduccion];
GO
IF OBJECT_ID(N'[dbo].[FK_SolicitudInsumoDetalleSolicitudInsumo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleSolicitudInsumoSet] DROP CONSTRAINT [FK_SolicitudInsumoDetalleSolicitudInsumo];
GO
IF OBJECT_ID(N'[dbo].[FK_ParteProduccionDetalleParteProduccionInsumo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleParteProduccionInsumoSet] DROP CONSTRAINT [FK_ParteProduccionDetalleParteProduccionInsumo];
GO
IF OBJECT_ID(N'[dbo].[FK_ParteProduccionDetalleParteProduccionBateria]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleParteProduccionBateriaSet] DROP CONSTRAINT [FK_ParteProduccionDetalleParteProduccionBateria];
GO
IF OBJECT_ID(N'[dbo].[FK_BateriaDetalleParteProduccionBateria]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleParteProduccionBateriaSet] DROP CONSTRAINT [FK_BateriaDetalleParteProduccionBateria];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanProduccionProgramacionProduccion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProgramacionProduccionSet] DROP CONSTRAINT [FK_PlanProduccionProgramacionProduccion];
GO
IF OBJECT_ID(N'[dbo].[FK_SolicitudProduccionPlanProduccion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SolicitudProduccionSet] DROP CONSTRAINT [FK_SolicitudProduccionPlanProduccion];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdenTrabajoDetalleOrdenTrabajoPersonal]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleOrdenTrabajoPersonalSet] DROP CONSTRAINT [FK_OrdenTrabajoDetalleOrdenTrabajoPersonal];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdenTrabajoDetalleOrdenTrabajoInsumo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleOrdenTrabajoInsumoSet] DROP CONSTRAINT [FK_OrdenTrabajoDetalleOrdenTrabajoInsumo];
GO
IF OBJECT_ID(N'[dbo].[FK_SolicitudProduccionLote]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LoteSet] DROP CONSTRAINT [FK_SolicitudProduccionLote];
GO
IF OBJECT_ID(N'[dbo].[FK_LoteOrdenTrabajo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrdenTrabajoSet] DROP CONSTRAINT [FK_LoteOrdenTrabajo];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdenTrabajoDetalleOrdenTrabajoMaquinaria]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleOrdenTrabajoMaquinariaSet] DROP CONSTRAINT [FK_OrdenTrabajoDetalleOrdenTrabajoMaquinaria];
GO
IF OBJECT_ID(N'[dbo].[FK_OrdenTrabajoSolicitudInsumo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SolicitudInsumoSet] DROP CONSTRAINT [FK_OrdenTrabajoSolicitudInsumo];
GO
IF OBJECT_ID(N'[dbo].[FK_MaquinariaDetalleOrdenTrabajoMaquinaria]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DetalleOrdenTrabajoMaquinariaSet] DROP CONSTRAINT [FK_MaquinariaDetalleOrdenTrabajoMaquinaria];
GO
IF OBJECT_ID(N'[dbo].[fk_Backorder_Entrega1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Backorder] DROP CONSTRAINT [fk_Backorder_Entrega1];
GO
IF OBJECT_ID(N'[dbo].[fk_ProductoBackOrder_Backorder1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductoBackOrder] DROP CONSTRAINT [fk_ProductoBackOrder_Backorder1];
GO
IF OBJECT_ID(N'[dbo].[fk_DisponibilidadRecurso_Calendario1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DisponibilidadRecurso] DROP CONSTRAINT [fk_DisponibilidadRecurso_Calendario1];
GO
IF OBJECT_ID(N'[dbo].[fk_DisponibilidadTransporte_Calendario1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DisponibilidadTransporte] DROP CONSTRAINT [fk_DisponibilidadTransporte_Calendario1];
GO
IF OBJECT_ID(N'[dbo].[fk_HojaRutaRecurso_Calendario1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HojaRutaRecurso] DROP CONSTRAINT [fk_HojaRutaRecurso_Calendario1];
GO
IF OBJECT_ID(N'[dbo].[FK__Empleados__Cargo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK__Empleados__Cargo];
GO
IF OBJECT_ID(N'[dbo].[FK_Cliente_EstadoCliente1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_EstadoCliente1];
GO
IF OBJECT_ID(N'[dbo].[FK_Cliente_TipoCliente]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_TipoCliente];
GO
IF OBJECT_ID(N'[dbo].[FK_Cliente_TipoDocumento1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_TipoDocumento1];
GO
IF OBJECT_ID(N'[dbo].[FK_Direccion_Cliente1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Direccion] DROP CONSTRAINT [FK_Direccion_Cliente1];
GO
IF OBJECT_ID(N'[dbo].[fk_Entrega_Cliente1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entrega] DROP CONSTRAINT [fk_Entrega_Cliente1];
GO
IF OBJECT_ID(N'[dbo].[FK_Factura_Cliente1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Cliente1];
GO
IF OBJECT_ID(N'[dbo].[fk_HojaRutaDetalle_Cliente1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HojaRutaDetalle] DROP CONSTRAINT [fk_HojaRutaDetalle_Cliente1];
GO
IF OBJECT_ID(N'[dbo].[FK_Pedido_Cliente1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Cliente1];
GO
IF OBJECT_ID(N'[dbo].[FK_Direccion_TipoDireccion1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Direccion] DROP CONSTRAINT [FK_Direccion_TipoDireccion1];
GO
IF OBJECT_ID(N'[dbo].[fk_Direccion_Ubigeo1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Direccion] DROP CONSTRAINT [fk_Direccion_Ubigeo1];
GO
IF OBJECT_ID(N'[dbo].[FK_Direccion_ZonaDespacho1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Direccion] DROP CONSTRAINT [FK_Direccion_ZonaDespacho1];
GO
IF OBJECT_ID(N'[dbo].[fk_Entrega_Direccion1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entrega] DROP CONSTRAINT [fk_Entrega_Direccion1];
GO
IF OBJECT_ID(N'[dbo].[fk_Factura_Direccion1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [fk_Factura_Direccion1];
GO
IF OBJECT_ID(N'[dbo].[fk_HojaRutaDetalle_Direccion1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HojaRutaDetalle] DROP CONSTRAINT [fk_HojaRutaDetalle_Direccion1];
GO
IF OBJECT_ID(N'[dbo].[fk_Pedido_Direccion1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [fk_Pedido_Direccion1];
GO
IF OBJECT_ID(N'[dbo].[fk_DisponibilidadRecurso_Empleado1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DisponibilidadRecurso] DROP CONSTRAINT [fk_DisponibilidadRecurso_Empleado1];
GO
IF OBJECT_ID(N'[dbo].[fk_DisponibilidadTransporte_Transporte1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DisponibilidadTransporte] DROP CONSTRAINT [fk_DisponibilidadTransporte_Transporte1];
GO
IF OBJECT_ID(N'[dbo].[fk_HojaRutaRecurso_Recurso1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HojaRutaRecurso] DROP CONSTRAINT [fk_HojaRutaRecurso_Recurso1];
GO
IF OBJECT_ID(N'[dbo].[fk_Entrega_EstadoEntrega1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entrega] DROP CONSTRAINT [fk_Entrega_EstadoEntrega1];
GO
IF OBJECT_ID(N'[dbo].[fk_Entrega_MotivoTraslado1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entrega] DROP CONSTRAINT [fk_Entrega_MotivoTraslado1];
GO
IF OBJECT_ID(N'[dbo].[fk_Entrega_ZonaDespacho1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entrega] DROP CONSTRAINT [fk_Entrega_ZonaDespacho1];
GO
IF OBJECT_ID(N'[dbo].[fk_EntregaDetalle_Entrega1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EntregaDetalle] DROP CONSTRAINT [fk_EntregaDetalle_Entrega1];
GO
IF OBJECT_ID(N'[dbo].[fk_EntregaDetalle_Producto1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EntregaDetalle] DROP CONSTRAINT [fk_EntregaDetalle_Producto1];
GO
IF OBJECT_ID(N'[dbo].[fk_FacturaEntrega_EntregaDetalle1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FacturaEntrega] DROP CONSTRAINT [fk_FacturaEntrega_EntregaDetalle1];
GO
IF OBJECT_ID(N'[dbo].[fk_PedidoEntrega_EntregaDetalle1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PedidoEntrega] DROP CONSTRAINT [fk_PedidoEntrega_EntregaDetalle1];
GO
IF OBJECT_ID(N'[dbo].[fk_Factura_EstadoFactura1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [fk_Factura_EstadoFactura1];
GO
IF OBJECT_ID(N'[dbo].[fk_HojaRuta_EstadoHojaRuta1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HojaRuta] DROP CONSTRAINT [fk_HojaRuta_EstadoHojaRuta1];
GO
IF OBJECT_ID(N'[dbo].[fk_temHojaRutaDetalle_EstadoHojaRutaDetalle1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HojaRutaDetalle] DROP CONSTRAINT [fk_temHojaRutaDetalle_EstadoHojaRutaDetalle1];
GO
IF OBJECT_ID(N'[dbo].[fk_Pedido_EstadoPedido1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [fk_Pedido_EstadoPedido1];
GO
IF OBJECT_ID(N'[dbo].[fk_FacturaDetalle_Factura1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FacturaDetalle] DROP CONSTRAINT [fk_FacturaDetalle_Factura1];
GO
IF OBJECT_ID(N'[dbo].[fk_FacturaDetalle_Producto1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FacturaDetalle] DROP CONSTRAINT [fk_FacturaDetalle_Producto1];
GO
IF OBJECT_ID(N'[dbo].[fk_FacturaEntrega_FacturaDetalle1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FacturaEntrega] DROP CONSTRAINT [fk_FacturaEntrega_FacturaDetalle1];
GO
IF OBJECT_ID(N'[dbo].[fk_HojaRuta_Transporte1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HojaRuta] DROP CONSTRAINT [fk_HojaRuta_Transporte1];
GO
IF OBJECT_ID(N'[dbo].[fk_HojaRuta_ZonaDespacho1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HojaRuta] DROP CONSTRAINT [fk_HojaRuta_ZonaDespacho1];
GO
IF OBJECT_ID(N'[dbo].[fk_HojaRutaDetalle_HojaRuta1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HojaRutaDetalle] DROP CONSTRAINT [fk_HojaRutaDetalle_HojaRuta1];
GO
IF OBJECT_ID(N'[dbo].[fk_HojaRutaRecurso_HojaRuta1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HojaRutaRecurso] DROP CONSTRAINT [fk_HojaRutaRecurso_HojaRuta1];
GO
IF OBJECT_ID(N'[dbo].[fk_Transporte_Marca1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Transporte] DROP CONSTRAINT [fk_Transporte_Marca1];
GO
IF OBJECT_ID(N'[dbo].[fk_Pedido_tipoPedido1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [fk_Pedido_tipoPedido1];
GO
IF OBJECT_ID(N'[dbo].[fk_PedidoDetalle_Pedido1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PedidoDetalle] DROP CONSTRAINT [fk_PedidoDetalle_Pedido1];
GO
IF OBJECT_ID(N'[dbo].[fk_PedidoDetalle_Producto1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PedidoDetalle] DROP CONSTRAINT [fk_PedidoDetalle_Producto1];
GO
IF OBJECT_ID(N'[dbo].[fk_PedidoEntrega_PedidoDetalle1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PedidoEntrega] DROP CONSTRAINT [fk_PedidoEntrega_PedidoDetalle1];
GO
IF OBJECT_ID(N'[dbo].[fk_ProductoBackOrder_Producto1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductoBackOrder] DROP CONSTRAINT [fk_ProductoBackOrder_Producto1];
GO
IF OBJECT_ID(N'[dbo].[fk_Transporte_TipoTransporte1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Transporte] DROP CONSTRAINT [fk_Transporte_TipoTransporte1];
GO
IF OBJECT_ID(N'[dbo].[FK_GuiaEntrada_inherits_DocumentoReferencia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada] DROP CONSTRAINT [FK_GuiaEntrada_inherits_DocumentoReferencia];
GO
IF OBJECT_ID(N'[dbo].[FK_GuiaSalida_inherits_DocumentoReferencia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_GuiaSalida] DROP CONSTRAINT [FK_GuiaSalida_inherits_DocumentoReferencia];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[DocumentosReferencia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentosReferencia];
GO
IF OBJECT_ID(N'[dbo].[Almacenes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Almacenes];
GO
IF OBJECT_ID(N'[dbo].[UserProfile]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserProfile];
GO
IF OBJECT_ID(N'[dbo].[webpages_Membership]', 'U') IS NOT NULL
    DROP TABLE [dbo].[webpages_Membership];
GO
IF OBJECT_ID(N'[dbo].[webpages_OAuthMembership]', 'U') IS NOT NULL
    DROP TABLE [dbo].[webpages_OAuthMembership];
GO
IF OBJECT_ID(N'[dbo].[webpages_Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[webpages_Roles];
GO
IF OBJECT_ID(N'[dbo].[Empleados]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Empleados];
GO
IF OBJECT_ID(N'[dbo].[Productos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Productos];
GO
IF OBJECT_ID(N'[dbo].[SolicitudesEntrada]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SolicitudesEntrada];
GO
IF OBJECT_ID(N'[dbo].[DetalleSolicitudEntrada]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleSolicitudEntrada];
GO
IF OBJECT_ID(N'[dbo].[Kardex]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kardex];
GO
IF OBJECT_ID(N'[dbo].[LoteSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LoteSet];
GO
IF OBJECT_ID(N'[dbo].[TipoLoteSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoLoteSet];
GO
IF OBJECT_ID(N'[dbo].[SolicitudSalidaConjunto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SolicitudSalidaConjunto];
GO
IF OBJECT_ID(N'[dbo].[DetalleSolicitudSalidaConjunto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleSolicitudSalidaConjunto];
GO
IF OBJECT_ID(N'[dbo].[DetalleGuiaSalidaConjunto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleGuiaSalidaConjunto];
GO
IF OBJECT_ID(N'[dbo].[SolicitudInsumoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SolicitudInsumoSet];
GO
IF OBJECT_ID(N'[dbo].[DetalleSolicitudInsumoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleSolicitudInsumoSet];
GO
IF OBJECT_ID(N'[dbo].[DetalleParteProduccionBateriaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleParteProduccionBateriaSet];
GO
IF OBJECT_ID(N'[dbo].[BateriaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BateriaSet];
GO
IF OBJECT_ID(N'[dbo].[DetalleOrdenTrabajoInsumoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleOrdenTrabajoInsumoSet];
GO
IF OBJECT_ID(N'[dbo].[ParteProduccionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ParteProduccionSet];
GO
IF OBJECT_ID(N'[dbo].[DetalleParteProduccionInsumoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleParteProduccionInsumoSet];
GO
IF OBJECT_ID(N'[dbo].[OrdenTrabajoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrdenTrabajoSet];
GO
IF OBJECT_ID(N'[dbo].[DetalleOrdenTrabajoPersonalSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleOrdenTrabajoPersonalSet];
GO
IF OBJECT_ID(N'[dbo].[SolicitudProduccionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SolicitudProduccionSet];
GO
IF OBJECT_ID(N'[dbo].[PlanProduccionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlanProduccionSet];
GO
IF OBJECT_ID(N'[dbo].[ProgramacionProduccionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProgramacionProduccionSet];
GO
IF OBJECT_ID(N'[dbo].[DetalleSolicitudProduccionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleSolicitudProduccionSet];
GO
IF OBJECT_ID(N'[dbo].[DetalleOrdenTrabajoMaquinariaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DetalleOrdenTrabajoMaquinariaSet];
GO
IF OBJECT_ID(N'[dbo].[MaquinariaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MaquinariaSet];
GO
IF OBJECT_ID(N'[dbo].[Backorder]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Backorder];
GO
IF OBJECT_ID(N'[dbo].[Calendario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Calendario];
GO
IF OBJECT_ID(N'[dbo].[Cargo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cargo];
GO
IF OBJECT_ID(N'[dbo].[Cliente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cliente];
GO
IF OBJECT_ID(N'[dbo].[Direccion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Direccion];
GO
IF OBJECT_ID(N'[dbo].[DisponibilidadRecurso]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DisponibilidadRecurso];
GO
IF OBJECT_ID(N'[dbo].[DisponibilidadTransporte]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DisponibilidadTransporte];
GO
IF OBJECT_ID(N'[dbo].[Entrega]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entrega];
GO
IF OBJECT_ID(N'[dbo].[EntregaDetalle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EntregaDetalle];
GO
IF OBJECT_ID(N'[dbo].[EstadoCliente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstadoCliente];
GO
IF OBJECT_ID(N'[dbo].[EstadoEntrega]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstadoEntrega];
GO
IF OBJECT_ID(N'[dbo].[EstadoFactura]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstadoFactura];
GO
IF OBJECT_ID(N'[dbo].[EstadoHojaRuta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstadoHojaRuta];
GO
IF OBJECT_ID(N'[dbo].[EstadoHojaRutaDetalle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstadoHojaRutaDetalle];
GO
IF OBJECT_ID(N'[dbo].[EstadoPedido]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EstadoPedido];
GO
IF OBJECT_ID(N'[dbo].[Factura]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Factura];
GO
IF OBJECT_ID(N'[dbo].[FacturaDetalle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FacturaDetalle];
GO
IF OBJECT_ID(N'[dbo].[FacturaEntrega]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FacturaEntrega];
GO
IF OBJECT_ID(N'[dbo].[HojaRuta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HojaRuta];
GO
IF OBJECT_ID(N'[dbo].[HojaRutaDetalle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HojaRutaDetalle];
GO
IF OBJECT_ID(N'[dbo].[HojaRutaRecurso]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HojaRutaRecurso];
GO
IF OBJECT_ID(N'[dbo].[Marca]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Marca];
GO
IF OBJECT_ID(N'[dbo].[MotivoTraslado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MotivoTraslado];
GO
IF OBJECT_ID(N'[dbo].[Parametro]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Parametro];
GO
IF OBJECT_ID(N'[dbo].[Pedido]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pedido];
GO
IF OBJECT_ID(N'[dbo].[PedidoDetalle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PedidoDetalle];
GO
IF OBJECT_ID(N'[dbo].[PedidoEntrega]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PedidoEntrega];
GO
IF OBJECT_ID(N'[dbo].[ProductoBackOrder]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductoBackOrder];
GO
IF OBJECT_ID(N'[dbo].[TipoCliente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoCliente];
GO
IF OBJECT_ID(N'[dbo].[TipoDireccion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoDireccion];
GO
IF OBJECT_ID(N'[dbo].[TipoDocumento]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoDocumento];
GO
IF OBJECT_ID(N'[dbo].[TipoPedido]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoPedido];
GO
IF OBJECT_ID(N'[dbo].[TipoTransporte]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoTransporte];
GO
IF OBJECT_ID(N'[dbo].[Transporte]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Transporte];
GO
IF OBJECT_ID(N'[dbo].[Ubigeo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ubigeo];
GO
IF OBJECT_ID(N'[dbo].[ZonaDespacho]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ZonaDespacho];
GO
IF OBJECT_ID(N'[dbo].[DocumentosReferencia_GuiaEntrada]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentosReferencia_GuiaEntrada];
GO
IF OBJECT_ID(N'[dbo].[DocumentosReferencia_GuiaSalida]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentosReferencia_GuiaSalida];
GO
IF OBJECT_ID(N'[dbo].[webpages_UsersInRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[webpages_UsersInRoles];
GO
IF OBJECT_ID(N'[dbo].[EmpleadoAlmacen]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadoAlmacen];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'DocumentosReferencia'
CREATE TABLE [dbo].[DocumentosReferencia] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [IdentificadorDocumento] nvarchar(max)  NOT NULL,
    [FechaElaboracion] datetime  NOT NULL,
    [Observaciones] nvarchar(max)  NULL,
    [Almacen_Id] int  NOT NULL,
    [Empleado_Id] int  NOT NULL
);
GO

-- Creating table 'Almacenes'
CREATE TABLE [dbo].[Almacenes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL,
    [Tipo] int  NOT NULL,
    [AreaEnM2] int  NOT NULL
);
GO

-- Creating table 'UserProfile'
CREATE TABLE [dbo].[UserProfile] (
    [UserId] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(56)  NOT NULL
);
GO

-- Creating table 'webpages_Membership'
CREATE TABLE [dbo].[webpages_Membership] (
    [UserId] int  NOT NULL,
    [CreateDate] datetime  NULL,
    [ConfirmationToken] nvarchar(128)  NULL,
    [IsConfirmed] bit  NULL,
    [LastPasswordFailureDate] datetime  NULL,
    [PasswordFailuresSinceLastSuccess] int  NOT NULL,
    [Password] nvarchar(128)  NOT NULL,
    [PasswordChangedDate] datetime  NULL,
    [PasswordSalt] nvarchar(128)  NOT NULL,
    [PasswordVerificationToken] nvarchar(128)  NULL,
    [PasswordVerificationTokenExpirationDate] datetime  NULL
);
GO

-- Creating table 'webpages_OAuthMembership'
CREATE TABLE [dbo].[webpages_OAuthMembership] (
    [Provider] nvarchar(30)  NOT NULL,
    [ProviderUserId] nvarchar(100)  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'webpages_Roles'
CREATE TABLE [dbo].[webpages_Roles] (
    [RoleId] int IDENTITY(1,1) NOT NULL,
    [RoleName] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'Empleados'
CREATE TABLE [dbo].[Empleados] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombres] nvarchar(max)  NOT NULL,
    [Apellidos] nvarchar(max)  NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL,
    [Dni] varchar(45)  NULL,
    [Correo] varchar(45)  NULL,
    [Telefono] varchar(45)  NULL,
    [idCargo] int  NULL,
    [UserProfile_UserId] int  NOT NULL
);
GO

-- Creating table 'Productos'
CREATE TABLE [dbo].[Productos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [DescripcionCorta] nvarchar(max)  NOT NULL,
    [DescripcionLarga] nvarchar(max)  NOT NULL,
    [PrecioListaCompra] float  NOT NULL,
    [PrecioListaVenta] float  NOT NULL,
    [Estado] int  NOT NULL,
    [Numero] varchar(45)  NULL,
    [Vigencia] int  NULL,
    [UnidadTiempoVigencia] varchar(3)  NULL,
    [Largo] decimal(16,4)  NULL,
    [Alto] decimal(16,4)  NULL,
    [Ancho] decimal(16,4)  NULL,
    [UnidadDimensiones] varchar(3)  NULL,
    [Peso] decimal(16,4)  NULL,
    [UnidadPeso] varchar(3)  NULL
);
GO

-- Creating table 'SolicitudesEntrada'
CREATE TABLE [dbo].[SolicitudesEntrada] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FechaElaboracion] datetime  NOT NULL,
    [TipoEntrada] int  NOT NULL,
    [Estado] int  NOT NULL,
    [Observaciones] nvarchar(max)  NULL,
    [Empleado_Id] int  NOT NULL
);
GO

-- Creating table 'DetalleSolicitudEntrada'
CREATE TABLE [dbo].[DetalleSolicitudEntrada] (
    [IdProducto] int  NOT NULL,
    [IdSolicitudEntrada] int  NOT NULL,
    [Cantidad] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Kardex'
CREATE TABLE [dbo].[Kardex] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TipoMovimiento] int  NOT NULL,
    [Cantidad] nvarchar(max)  NOT NULL,
    [ValorUnitario] float  NOT NULL,
    [DocumentoReferencia_Id] int  NOT NULL,
    [Almacen_Id] int  NOT NULL,
    [Producto_Id] int  NOT NULL
);
GO

-- Creating table 'LoteSet'
CREATE TABLE [dbo].[LoteSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NroLote] nvarchar(max)  NOT NULL,
    [FechaCreacion] datetime  NOT NULL,
    [SolicitudProduccion_Id] int  NOT NULL
);
GO

-- Creating table 'TipoLoteSet'
CREATE TABLE [dbo].[TipoLoteSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SolicitudSalidaConjunto'
CREATE TABLE [dbo].[SolicitudSalidaConjunto] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FechaElaboracion] datetime  NOT NULL,
    [DireccionEntrega] nvarchar(max)  NOT NULL,
    [RazonSocialDestinatario] nvarchar(max)  NOT NULL,
    [TipoSalida] int  NOT NULL,
    [Estado] int  NOT NULL,
    [Observaciones] nvarchar(max)  NULL,
    [Empleado_Id] int  NOT NULL
);
GO

-- Creating table 'DetalleSolicitudSalidaConjunto'
CREATE TABLE [dbo].[DetalleSolicitudSalidaConjunto] (
    [Cantidad] int  NOT NULL,
    [IdProducto] int  NOT NULL,
    [IdSolicitudSalida] int  NOT NULL,
    [CantidadFinal] int  NOT NULL
);
GO

-- Creating table 'DetalleGuiaSalidaConjunto'
CREATE TABLE [dbo].[DetalleGuiaSalidaConjunto] (
    [Cantidad] int  NOT NULL,
    [IdGuiaSalida] int  NOT NULL,
    [IdProducto] int  NOT NULL
);
GO

-- Creating table 'SolicitudInsumoSet'
CREATE TABLE [dbo].[SolicitudInsumoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [OrdenTrabajo_Id] int  NOT NULL
);
GO

-- Creating table 'DetalleSolicitudInsumoSet'
CREATE TABLE [dbo].[DetalleSolicitudInsumoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SolicitudInsumo_Id] int  NOT NULL
);
GO

-- Creating table 'DetalleParteProduccionBateriaSet'
CREATE TABLE [dbo].[DetalleParteProduccionBateriaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ParteProduccion_Id] int  NOT NULL,
    [Bateria_Id] int  NOT NULL
);
GO

-- Creating table 'BateriaSet'
CREATE TABLE [dbo].[BateriaSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'DetalleOrdenTrabajoInsumoSet'
CREATE TABLE [dbo].[DetalleOrdenTrabajoInsumoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [OrdenTrabajo_Id] int  NOT NULL
);
GO

-- Creating table 'ParteProduccionSet'
CREATE TABLE [dbo].[ParteProduccionSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'DetalleParteProduccionInsumoSet'
CREATE TABLE [dbo].[DetalleParteProduccionInsumoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ParteProduccion_Id] int  NOT NULL
);
GO

-- Creating table 'OrdenTrabajoSet'
CREATE TABLE [dbo].[OrdenTrabajoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Lote_Id] int  NOT NULL
);
GO

-- Creating table 'DetalleOrdenTrabajoPersonalSet'
CREATE TABLE [dbo].[DetalleOrdenTrabajoPersonalSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [OrdenTrabajo_Id] int  NOT NULL
);
GO

-- Creating table 'SolicitudProduccionSet'
CREATE TABLE [dbo].[SolicitudProduccionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PlanProduccion_Id] int  NOT NULL
);
GO

-- Creating table 'PlanProduccionSet'
CREATE TABLE [dbo].[PlanProduccionSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'ProgramacionProduccionSet'
CREATE TABLE [dbo].[ProgramacionProduccionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PlanProduccion_Id] int  NOT NULL
);
GO

-- Creating table 'DetalleSolicitudProduccionSet'
CREATE TABLE [dbo].[DetalleSolicitudProduccionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SolicitudProduccion_Id] int  NOT NULL,
    [OrdenTrabajo_Id] int  NOT NULL
);
GO

-- Creating table 'DetalleOrdenTrabajoMaquinariaSet'
CREATE TABLE [dbo].[DetalleOrdenTrabajoMaquinariaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [OrdenTrabajo_Id] int  NOT NULL,
    [Maquinaria_Id] int  NOT NULL
);
GO

-- Creating table 'MaquinariaSet'
CREATE TABLE [dbo].[MaquinariaSet] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Backorder'
CREATE TABLE [dbo].[Backorder] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [idEntrega] int  NOT NULL,
    [FechaEmision] datetime  NULL
);
GO

-- Creating table 'Calendario'
CREATE TABLE [dbo].[Calendario] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Dia] varchar(45)  NULL,
    [Mes] varchar(45)  NULL,
    [Anio] varchar(45)  NULL
);
GO

-- Creating table 'Cargo'
CREATE TABLE [dbo].[Cargo] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'Cliente'
CREATE TABLE [dbo].[Cliente] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Nombre] varchar(150)  NULL,
    [Devolucion] char(1)  NULL,
    [NumeroDocumento] varchar(15)  NULL,
    [Renovacion] varchar(45)  NULL,
    [Aceptacion] decimal(10,0)  NULL,
    [ToleranciaFalta] decimal(10,0)  NULL,
    [PrioridadReposicion] int  NULL,
    [IdTipoCliente] int  NOT NULL,
    [idEstadoCliente] int  NOT NULL,
    [idTipoDocumento] int  NOT NULL
);
GO

-- Creating table 'Direccion'
CREATE TABLE [dbo].[Direccion] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Direccion1] varchar(150)  NULL,
    [Descripcion] varchar(150)  NULL,
    [idCliente] int  NOT NULL,
    [idTipoDireccion] int  NOT NULL,
    [idZonaDespacho] int  NOT NULL,
    [idUbigeo] char(6)  NOT NULL,
    [Direccion11] varchar(150)  NULL
);
GO

-- Creating table 'DisponibilidadRecurso'
CREATE TABLE [dbo].[DisponibilidadRecurso] (
    [idCalendario] int  NOT NULL,
    [idEmpleado] int  NOT NULL,
    [Disponible] char(1)  NULL
);
GO

-- Creating table 'DisponibilidadTransporte'
CREATE TABLE [dbo].[DisponibilidadTransporte] (
    [idCalendario] int  NOT NULL,
    [idTransporte] int  NOT NULL,
    [Disponible] char(1)  NULL
);
GO

-- Creating table 'Entrega'
CREATE TABLE [dbo].[Entrega] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Numero] varchar(45)  NULL,
    [FechaGeneracion] datetime  NULL,
    [FechaEntrega] datetime  NULL,
    [idEstadoEntrega] int  NOT NULL,
    [idZonaDespacho] int  NOT NULL,
    [idMotivoTraslado] int  NOT NULL,
    [idCliente] int  NOT NULL,
    [idDireccion] int  NOT NULL
);
GO

-- Creating table 'EntregaDetalle'
CREATE TABLE [dbo].[EntregaDetalle] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [NroItem] int  NULL,
    [CantidadEntregaProg] int  NULL,
    [CantidadEntregada] int  NULL,
    [CantidadRechazada] int  NULL,
    [CantidadEmbarcada] int  NULL,
    [CantidadConfirmada] int  NULL,
    [idEntrega] int  NOT NULL,
    [idProducto] int  NOT NULL
);
GO

-- Creating table 'EstadoCliente'
CREATE TABLE [dbo].[EstadoCliente] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'EstadoEntrega'
CREATE TABLE [dbo].[EstadoEntrega] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'EstadoFactura'
CREATE TABLE [dbo].[EstadoFactura] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Nombre] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'EstadoHojaRuta'
CREATE TABLE [dbo].[EstadoHojaRuta] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'EstadoHojaRutaDetalle'
CREATE TABLE [dbo].[EstadoHojaRutaDetalle] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'EstadoPedido'
CREATE TABLE [dbo].[EstadoPedido] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Nombre] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'Factura'
CREATE TABLE [dbo].[Factura] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Numero] varchar(45)  NULL,
    [FechaEmision] datetime  NULL,
    [ValorBruto] decimal(10,0)  NULL,
    [MontoDescuento] decimal(10,0)  NULL,
    [ValorNeto] decimal(10,0)  NULL,
    [ValorIGV] decimal(10,0)  NULL,
    [ImporteTotal] decimal(10,0)  NULL,
    [idCliente] int  NOT NULL,
    [idEstadoFactura] int  NOT NULL,
    [idDireccion] int  NOT NULL
);
GO

-- Creating table 'FacturaDetalle'
CREATE TABLE [dbo].[FacturaDetalle] (
    [idFacturaDetalle] int IDENTITY(1,1) NOT NULL,
    [FechaEntrega] datetime  NULL,
    [NroItem] int  NULL,
    [Cantidad] int  NULL,
    [CantidadEntregada] int  NULL,
    [PrecioUnitario] decimal(10,0)  NULL,
    [ValorNeto] decimal(10,0)  NULL,
    [ImporteTotal] decimal(10,0)  NULL,
    [idFactura] int  NOT NULL,
    [idProducto] int  NOT NULL
);
GO

-- Creating table 'FacturaEntrega'
CREATE TABLE [dbo].[FacturaEntrega] (
    [idFacturaDetalle] int  NOT NULL,
    [idEntregaDetalle] int  NOT NULL,
    [Cantidad] int  NULL,
    [FechaRegistro] datetime  NULL
);
GO

-- Creating table 'HojaRuta'
CREATE TABLE [dbo].[HojaRuta] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Numero] varchar(45)  NULL,
    [FechaGeneracion] datetime  NULL,
    [FechaHojaRuta] datetime  NULL,
    [idEstadoHojaRuta] int  NOT NULL,
    [idZonaDespacho] int  NOT NULL,
    [idTransporte] int  NULL
);
GO

-- Creating table 'HojaRutaDetalle'
CREATE TABLE [dbo].[HojaRutaDetalle] (
    [idHojaRutaDetalle] int IDENTITY(1,1) NOT NULL,
    [NroItem] int  NULL,
    [Cubicaje] decimal(16,4)  NULL,
    [Peso] decimal(16,4)  NULL,
    [FechaUltimoEstado] datetime  NULL,
    [idEstadoHojaRutaDetalle] int  NOT NULL,
    [idHojaRuta] int  NOT NULL,
    [idCliente] int  NOT NULL,
    [idDireccion] int  NOT NULL
);
GO

-- Creating table 'HojaRutaRecurso'
CREATE TABLE [dbo].[HojaRutaRecurso] (
    [idRecurso] int  NOT NULL,
    [idHojaRuta] int  NOT NULL,
    [idCalendario] int  NOT NULL,
    [Disponibilidad] char(1)  NULL
);
GO

-- Creating table 'Marca'
CREATE TABLE [dbo].[Marca] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL
);
GO

-- Creating table 'MotivoTraslado'
CREATE TABLE [dbo].[MotivoTraslado] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'Parametro'
CREATE TABLE [dbo].[Parametro] (
    [idParametro] int  NOT NULL,
    [PrioridadSede] int  NULL,
    [PlazoMaxDespacho] int  NULL,
    [TipoDistribucionStock] varchar(45)  NULL,
    [RedondeoCubicaje] int  NULL
);
GO

-- Creating table 'Pedido'
CREATE TABLE [dbo].[Pedido] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Numero] varchar(45)  NULL,
    [FechaEmision] datetime  NULL,
    [ValorBruto] decimal(10,0)  NULL,
    [MontoDescuento] decimal(10,0)  NULL,
    [ValorNeto] decimal(10,0)  NULL,
    [ValorIGV] decimal(10,0)  NULL,
    [ImporteTotal] decimal(10,0)  NULL,
    [idCliente] int  NOT NULL,
    [idEstadoPedido] int  NOT NULL,
    [idTipoPedido] int  NOT NULL,
    [idDireccion] int  NOT NULL
);
GO

-- Creating table 'PedidoDetalle'
CREATE TABLE [dbo].[PedidoDetalle] (
    [idPedidoDetalle] int IDENTITY(1,1) NOT NULL,
    [NroItem] int  NULL,
    [Cantidad] int  NULL,
    [CantidadEntregada] int  NULL,
    [FechaEntrega] datetime  NULL,
    [idPedido] int  NOT NULL,
    [idProducto] int  NOT NULL
);
GO

-- Creating table 'PedidoEntrega'
CREATE TABLE [dbo].[PedidoEntrega] (
    [idEntregaDetalle] int  NOT NULL,
    [idPedidoDetalle] int  NOT NULL,
    [Cantidad] int  NULL,
    [FechaEntrega] datetime  NULL
);
GO

-- Creating table 'ProductoBackOrder'
CREATE TABLE [dbo].[ProductoBackOrder] (
    [idProducto] int  NOT NULL,
    [idBackorder] int  NOT NULL,
    [Cantidad] int  NULL
);
GO

-- Creating table 'TipoCliente'
CREATE TABLE [dbo].[TipoCliente] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'TipoDireccion'
CREATE TABLE [dbo].[TipoDireccion] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(50)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'TipoDocumento'
CREATE TABLE [dbo].[TipoDocumento] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'TipoPedido'
CREATE TABLE [dbo].[TipoPedido] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'TipoTransporte'
CREATE TABLE [dbo].[TipoTransporte] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Nombre] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'Transporte'
CREATE TABLE [dbo].[Transporte] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [PesoBruto] decimal(16,4)  NULL,
    [PesoNeto] decimal(16,4)  NULL,
    [UnidadPeso] varchar(3)  NULL,
    [NroEjes] int  NULL,
    [Placa] varchar(45)  NULL,
    [Modelo] varchar(45)  NULL,
    [Cubicaje] decimal(16,4)  NULL,
    [UnidadCubicaje] varchar(3)  NULL,
    [idTipoTransporte] int  NOT NULL,
    [idMarca] int  NOT NULL
);
GO

-- Creating table 'Ubigeo'
CREATE TABLE [dbo].[Ubigeo] (
    [Codigo] char(6)  NOT NULL,
    [Descripcion] varchar(100)  NOT NULL
);
GO

-- Creating table 'ZonaDespacho'
CREATE TABLE [dbo].[ZonaDespacho] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Descripcion] varchar(45)  NULL,
    [Abreviatura] varchar(10)  NULL
);
GO

-- Creating table 'DocumentosReferencia_GuiaEntrada'
CREATE TABLE [dbo].[DocumentosReferencia_GuiaEntrada] (
    [Id] int  NOT NULL,
    [SolicitudEntrada_Id] int  NOT NULL
);
GO

-- Creating table 'DocumentosReferencia_GuiaSalida'
CREATE TABLE [dbo].[DocumentosReferencia_GuiaSalida] (
    [Id] int  NOT NULL,
    [SolicitudSalida_Id] int  NOT NULL
);
GO

-- Creating table 'webpages_UsersInRoles'
CREATE TABLE [dbo].[webpages_UsersInRoles] (
    [webpages_Roles_RoleId] int  NOT NULL,
    [UserProfile_UserId] int  NOT NULL
);
GO

-- Creating table 'EmpleadoAlmacen'
CREATE TABLE [dbo].[EmpleadoAlmacen] (
    [Empleado_Id] int  NOT NULL,
    [Almacen_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'DocumentosReferencia'
ALTER TABLE [dbo].[DocumentosReferencia]
ADD CONSTRAINT [PK_DocumentosReferencia]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Almacenes'
ALTER TABLE [dbo].[Almacenes]
ADD CONSTRAINT [PK_Almacenes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [UserId] in table 'UserProfile'
ALTER TABLE [dbo].[UserProfile]
ADD CONSTRAINT [PK_UserProfile]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [UserId] in table 'webpages_Membership'
ALTER TABLE [dbo].[webpages_Membership]
ADD CONSTRAINT [PK_webpages_Membership]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [Provider], [ProviderUserId] in table 'webpages_OAuthMembership'
ALTER TABLE [dbo].[webpages_OAuthMembership]
ADD CONSTRAINT [PK_webpages_OAuthMembership]
    PRIMARY KEY CLUSTERED ([Provider], [ProviderUserId] ASC);
GO

-- Creating primary key on [RoleId] in table 'webpages_Roles'
ALTER TABLE [dbo].[webpages_Roles]
ADD CONSTRAINT [PK_webpages_Roles]
    PRIMARY KEY CLUSTERED ([RoleId] ASC);
GO

-- Creating primary key on [Id] in table 'Empleados'
ALTER TABLE [dbo].[Empleados]
ADD CONSTRAINT [PK_Empleados]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Productos'
ALTER TABLE [dbo].[Productos]
ADD CONSTRAINT [PK_Productos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SolicitudesEntrada'
ALTER TABLE [dbo].[SolicitudesEntrada]
ADD CONSTRAINT [PK_SolicitudesEntrada]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdProducto], [IdSolicitudEntrada] in table 'DetalleSolicitudEntrada'
ALTER TABLE [dbo].[DetalleSolicitudEntrada]
ADD CONSTRAINT [PK_DetalleSolicitudEntrada]
    PRIMARY KEY CLUSTERED ([IdProducto], [IdSolicitudEntrada] ASC);
GO

-- Creating primary key on [Id] in table 'Kardex'
ALTER TABLE [dbo].[Kardex]
ADD CONSTRAINT [PK_Kardex]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LoteSet'
ALTER TABLE [dbo].[LoteSet]
ADD CONSTRAINT [PK_LoteSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoLoteSet'
ALTER TABLE [dbo].[TipoLoteSet]
ADD CONSTRAINT [PK_TipoLoteSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SolicitudSalidaConjunto'
ALTER TABLE [dbo].[SolicitudSalidaConjunto]
ADD CONSTRAINT [PK_SolicitudSalidaConjunto]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdProducto], [IdSolicitudSalida] in table 'DetalleSolicitudSalidaConjunto'
ALTER TABLE [dbo].[DetalleSolicitudSalidaConjunto]
ADD CONSTRAINT [PK_DetalleSolicitudSalidaConjunto]
    PRIMARY KEY CLUSTERED ([IdProducto], [IdSolicitudSalida] ASC);
GO

-- Creating primary key on [IdGuiaSalida], [IdProducto] in table 'DetalleGuiaSalidaConjunto'
ALTER TABLE [dbo].[DetalleGuiaSalidaConjunto]
ADD CONSTRAINT [PK_DetalleGuiaSalidaConjunto]
    PRIMARY KEY CLUSTERED ([IdGuiaSalida], [IdProducto] ASC);
GO

-- Creating primary key on [Id] in table 'SolicitudInsumoSet'
ALTER TABLE [dbo].[SolicitudInsumoSet]
ADD CONSTRAINT [PK_SolicitudInsumoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetalleSolicitudInsumoSet'
ALTER TABLE [dbo].[DetalleSolicitudInsumoSet]
ADD CONSTRAINT [PK_DetalleSolicitudInsumoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetalleParteProduccionBateriaSet'
ALTER TABLE [dbo].[DetalleParteProduccionBateriaSet]
ADD CONSTRAINT [PK_DetalleParteProduccionBateriaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BateriaSet'
ALTER TABLE [dbo].[BateriaSet]
ADD CONSTRAINT [PK_BateriaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetalleOrdenTrabajoInsumoSet'
ALTER TABLE [dbo].[DetalleOrdenTrabajoInsumoSet]
ADD CONSTRAINT [PK_DetalleOrdenTrabajoInsumoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ParteProduccionSet'
ALTER TABLE [dbo].[ParteProduccionSet]
ADD CONSTRAINT [PK_ParteProduccionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetalleParteProduccionInsumoSet'
ALTER TABLE [dbo].[DetalleParteProduccionInsumoSet]
ADD CONSTRAINT [PK_DetalleParteProduccionInsumoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OrdenTrabajoSet'
ALTER TABLE [dbo].[OrdenTrabajoSet]
ADD CONSTRAINT [PK_OrdenTrabajoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetalleOrdenTrabajoPersonalSet'
ALTER TABLE [dbo].[DetalleOrdenTrabajoPersonalSet]
ADD CONSTRAINT [PK_DetalleOrdenTrabajoPersonalSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SolicitudProduccionSet'
ALTER TABLE [dbo].[SolicitudProduccionSet]
ADD CONSTRAINT [PK_SolicitudProduccionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PlanProduccionSet'
ALTER TABLE [dbo].[PlanProduccionSet]
ADD CONSTRAINT [PK_PlanProduccionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProgramacionProduccionSet'
ALTER TABLE [dbo].[ProgramacionProduccionSet]
ADD CONSTRAINT [PK_ProgramacionProduccionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetalleSolicitudProduccionSet'
ALTER TABLE [dbo].[DetalleSolicitudProduccionSet]
ADD CONSTRAINT [PK_DetalleSolicitudProduccionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DetalleOrdenTrabajoMaquinariaSet'
ALTER TABLE [dbo].[DetalleOrdenTrabajoMaquinariaSet]
ADD CONSTRAINT [PK_DetalleOrdenTrabajoMaquinariaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MaquinariaSet'
ALTER TABLE [dbo].[MaquinariaSet]
ADD CONSTRAINT [PK_MaquinariaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Codigo] in table 'Backorder'
ALTER TABLE [dbo].[Backorder]
ADD CONSTRAINT [PK_Backorder]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Calendario'
ALTER TABLE [dbo].[Calendario]
ADD CONSTRAINT [PK_Calendario]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Cargo'
ALTER TABLE [dbo].[Cargo]
ADD CONSTRAINT [PK_Cargo]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Cliente'
ALTER TABLE [dbo].[Cliente]
ADD CONSTRAINT [PK_Cliente]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Direccion'
ALTER TABLE [dbo].[Direccion]
ADD CONSTRAINT [PK_Direccion]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [idCalendario], [idEmpleado] in table 'DisponibilidadRecurso'
ALTER TABLE [dbo].[DisponibilidadRecurso]
ADD CONSTRAINT [PK_DisponibilidadRecurso]
    PRIMARY KEY CLUSTERED ([idCalendario], [idEmpleado] ASC);
GO

-- Creating primary key on [idCalendario], [idTransporte] in table 'DisponibilidadTransporte'
ALTER TABLE [dbo].[DisponibilidadTransporte]
ADD CONSTRAINT [PK_DisponibilidadTransporte]
    PRIMARY KEY CLUSTERED ([idCalendario], [idTransporte] ASC);
GO

-- Creating primary key on [Codigo] in table 'Entrega'
ALTER TABLE [dbo].[Entrega]
ADD CONSTRAINT [PK_Entrega]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'EntregaDetalle'
ALTER TABLE [dbo].[EntregaDetalle]
ADD CONSTRAINT [PK_EntregaDetalle]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'EstadoCliente'
ALTER TABLE [dbo].[EstadoCliente]
ADD CONSTRAINT [PK_EstadoCliente]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'EstadoEntrega'
ALTER TABLE [dbo].[EstadoEntrega]
ADD CONSTRAINT [PK_EstadoEntrega]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'EstadoFactura'
ALTER TABLE [dbo].[EstadoFactura]
ADD CONSTRAINT [PK_EstadoFactura]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'EstadoHojaRuta'
ALTER TABLE [dbo].[EstadoHojaRuta]
ADD CONSTRAINT [PK_EstadoHojaRuta]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'EstadoHojaRutaDetalle'
ALTER TABLE [dbo].[EstadoHojaRutaDetalle]
ADD CONSTRAINT [PK_EstadoHojaRutaDetalle]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'EstadoPedido'
ALTER TABLE [dbo].[EstadoPedido]
ADD CONSTRAINT [PK_EstadoPedido]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Factura'
ALTER TABLE [dbo].[Factura]
ADD CONSTRAINT [PK_Factura]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [idFacturaDetalle] in table 'FacturaDetalle'
ALTER TABLE [dbo].[FacturaDetalle]
ADD CONSTRAINT [PK_FacturaDetalle]
    PRIMARY KEY CLUSTERED ([idFacturaDetalle] ASC);
GO

-- Creating primary key on [idFacturaDetalle], [idEntregaDetalle] in table 'FacturaEntrega'
ALTER TABLE [dbo].[FacturaEntrega]
ADD CONSTRAINT [PK_FacturaEntrega]
    PRIMARY KEY CLUSTERED ([idFacturaDetalle], [idEntregaDetalle] ASC);
GO

-- Creating primary key on [Codigo] in table 'HojaRuta'
ALTER TABLE [dbo].[HojaRuta]
ADD CONSTRAINT [PK_HojaRuta]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [idHojaRutaDetalle] in table 'HojaRutaDetalle'
ALTER TABLE [dbo].[HojaRutaDetalle]
ADD CONSTRAINT [PK_HojaRutaDetalle]
    PRIMARY KEY CLUSTERED ([idHojaRutaDetalle] ASC);
GO

-- Creating primary key on [idRecurso], [idHojaRuta], [idCalendario] in table 'HojaRutaRecurso'
ALTER TABLE [dbo].[HojaRutaRecurso]
ADD CONSTRAINT [PK_HojaRutaRecurso]
    PRIMARY KEY CLUSTERED ([idRecurso], [idHojaRuta], [idCalendario] ASC);
GO

-- Creating primary key on [Codigo] in table 'Marca'
ALTER TABLE [dbo].[Marca]
ADD CONSTRAINT [PK_Marca]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'MotivoTraslado'
ALTER TABLE [dbo].[MotivoTraslado]
ADD CONSTRAINT [PK_MotivoTraslado]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [idParametro] in table 'Parametro'
ALTER TABLE [dbo].[Parametro]
ADD CONSTRAINT [PK_Parametro]
    PRIMARY KEY CLUSTERED ([idParametro] ASC);
GO

-- Creating primary key on [Codigo] in table 'Pedido'
ALTER TABLE [dbo].[Pedido]
ADD CONSTRAINT [PK_Pedido]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [idPedidoDetalle] in table 'PedidoDetalle'
ALTER TABLE [dbo].[PedidoDetalle]
ADD CONSTRAINT [PK_PedidoDetalle]
    PRIMARY KEY CLUSTERED ([idPedidoDetalle] ASC);
GO

-- Creating primary key on [idEntregaDetalle], [idPedidoDetalle] in table 'PedidoEntrega'
ALTER TABLE [dbo].[PedidoEntrega]
ADD CONSTRAINT [PK_PedidoEntrega]
    PRIMARY KEY CLUSTERED ([idEntregaDetalle], [idPedidoDetalle] ASC);
GO

-- Creating primary key on [idProducto], [idBackorder] in table 'ProductoBackOrder'
ALTER TABLE [dbo].[ProductoBackOrder]
ADD CONSTRAINT [PK_ProductoBackOrder]
    PRIMARY KEY CLUSTERED ([idProducto], [idBackorder] ASC);
GO

-- Creating primary key on [Codigo] in table 'TipoCliente'
ALTER TABLE [dbo].[TipoCliente]
ADD CONSTRAINT [PK_TipoCliente]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'TipoDireccion'
ALTER TABLE [dbo].[TipoDireccion]
ADD CONSTRAINT [PK_TipoDireccion]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'TipoDocumento'
ALTER TABLE [dbo].[TipoDocumento]
ADD CONSTRAINT [PK_TipoDocumento]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'TipoPedido'
ALTER TABLE [dbo].[TipoPedido]
ADD CONSTRAINT [PK_TipoPedido]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'TipoTransporte'
ALTER TABLE [dbo].[TipoTransporte]
ADD CONSTRAINT [PK_TipoTransporte]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Transporte'
ALTER TABLE [dbo].[Transporte]
ADD CONSTRAINT [PK_Transporte]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Ubigeo'
ALTER TABLE [dbo].[Ubigeo]
ADD CONSTRAINT [PK_Ubigeo]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'ZonaDespacho'
ALTER TABLE [dbo].[ZonaDespacho]
ADD CONSTRAINT [PK_ZonaDespacho]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Id] in table 'DocumentosReferencia_GuiaEntrada'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada]
ADD CONSTRAINT [PK_DocumentosReferencia_GuiaEntrada]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DocumentosReferencia_GuiaSalida'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaSalida]
ADD CONSTRAINT [PK_DocumentosReferencia_GuiaSalida]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [webpages_Roles_RoleId], [UserProfile_UserId] in table 'webpages_UsersInRoles'
ALTER TABLE [dbo].[webpages_UsersInRoles]
ADD CONSTRAINT [PK_webpages_UsersInRoles]
    PRIMARY KEY CLUSTERED ([webpages_Roles_RoleId], [UserProfile_UserId] ASC);
GO

-- Creating primary key on [Empleado_Id], [Almacen_Id] in table 'EmpleadoAlmacen'
ALTER TABLE [dbo].[EmpleadoAlmacen]
ADD CONSTRAINT [PK_EmpleadoAlmacen]
    PRIMARY KEY CLUSTERED ([Empleado_Id], [Almacen_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Almacen_Id] in table 'DocumentosReferencia'
ALTER TABLE [dbo].[DocumentosReferencia]
ADD CONSTRAINT [FK_DocumentoReferenciaAlmacen]
    FOREIGN KEY ([Almacen_Id])
    REFERENCES [dbo].[Almacenes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentoReferenciaAlmacen'
CREATE INDEX [IX_FK_DocumentoReferenciaAlmacen]
ON [dbo].[DocumentosReferencia]
    ([Almacen_Id]);
GO

-- Creating foreign key on [webpages_Roles_RoleId] in table 'webpages_UsersInRoles'
ALTER TABLE [dbo].[webpages_UsersInRoles]
ADD CONSTRAINT [FK_webpages_UsersInRoles_webpages_Roles]
    FOREIGN KEY ([webpages_Roles_RoleId])
    REFERENCES [dbo].[webpages_Roles]
        ([RoleId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserProfile_UserId] in table 'webpages_UsersInRoles'
ALTER TABLE [dbo].[webpages_UsersInRoles]
ADD CONSTRAINT [FK_webpages_UsersInRoles_UserProfile]
    FOREIGN KEY ([UserProfile_UserId])
    REFERENCES [dbo].[UserProfile]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_webpages_UsersInRoles_UserProfile'
CREATE INDEX [IX_FK_webpages_UsersInRoles_UserProfile]
ON [dbo].[webpages_UsersInRoles]
    ([UserProfile_UserId]);
GO

-- Creating foreign key on [UserProfile_UserId] in table 'Empleados'
ALTER TABLE [dbo].[Empleados]
ADD CONSTRAINT [FK_EmpleadoUserProfile]
    FOREIGN KEY ([UserProfile_UserId])
    REFERENCES [dbo].[UserProfile]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoUserProfile'
CREATE INDEX [IX_FK_EmpleadoUserProfile]
ON [dbo].[Empleados]
    ([UserProfile_UserId]);
GO

-- Creating foreign key on [Empleado_Id] in table 'EmpleadoAlmacen'
ALTER TABLE [dbo].[EmpleadoAlmacen]
ADD CONSTRAINT [FK_EmpleadoAlmacen_Empleado]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Almacen_Id] in table 'EmpleadoAlmacen'
ALTER TABLE [dbo].[EmpleadoAlmacen]
ADD CONSTRAINT [FK_EmpleadoAlmacen_Almacen]
    FOREIGN KEY ([Almacen_Id])
    REFERENCES [dbo].[Almacenes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoAlmacen_Almacen'
CREATE INDEX [IX_FK_EmpleadoAlmacen_Almacen]
ON [dbo].[EmpleadoAlmacen]
    ([Almacen_Id]);
GO

-- Creating foreign key on [Empleado_Id] in table 'DocumentosReferencia'
ALTER TABLE [dbo].[DocumentosReferencia]
ADD CONSTRAINT [FK_EmpleadoDocumentoReferencia]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoDocumentoReferencia'
CREATE INDEX [IX_FK_EmpleadoDocumentoReferencia]
ON [dbo].[DocumentosReferencia]
    ([Empleado_Id]);
GO

-- Creating foreign key on [SolicitudEntrada_Id] in table 'DocumentosReferencia_GuiaEntrada'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada]
ADD CONSTRAINT [FK_GuiaEntradaSolicitudEntrada]
    FOREIGN KEY ([SolicitudEntrada_Id])
    REFERENCES [dbo].[SolicitudesEntrada]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GuiaEntradaSolicitudEntrada'
CREATE INDEX [IX_FK_GuiaEntradaSolicitudEntrada]
ON [dbo].[DocumentosReferencia_GuiaEntrada]
    ([SolicitudEntrada_Id]);
GO

-- Creating foreign key on [IdSolicitudEntrada] in table 'DetalleSolicitudEntrada'
ALTER TABLE [dbo].[DetalleSolicitudEntrada]
ADD CONSTRAINT [FK_SolicitudEntradaSolicitudEntradaProducto]
    FOREIGN KEY ([IdSolicitudEntrada])
    REFERENCES [dbo].[SolicitudesEntrada]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SolicitudEntradaSolicitudEntradaProducto'
CREATE INDEX [IX_FK_SolicitudEntradaSolicitudEntradaProducto]
ON [dbo].[DetalleSolicitudEntrada]
    ([IdSolicitudEntrada]);
GO

-- Creating foreign key on [IdProducto] in table 'DetalleSolicitudEntrada'
ALTER TABLE [dbo].[DetalleSolicitudEntrada]
ADD CONSTRAINT [FK_ProductoSolicitudEntradaProducto]
    FOREIGN KEY ([IdProducto])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DocumentoReferencia_Id] in table 'Kardex'
ALTER TABLE [dbo].[Kardex]
ADD CONSTRAINT [FK_DocumentoReferenciaKardex]
    FOREIGN KEY ([DocumentoReferencia_Id])
    REFERENCES [dbo].[DocumentosReferencia]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentoReferenciaKardex'
CREATE INDEX [IX_FK_DocumentoReferenciaKardex]
ON [dbo].[Kardex]
    ([DocumentoReferencia_Id]);
GO

-- Creating foreign key on [Almacen_Id] in table 'Kardex'
ALTER TABLE [dbo].[Kardex]
ADD CONSTRAINT [FK_AlmacenKardex]
    FOREIGN KEY ([Almacen_Id])
    REFERENCES [dbo].[Almacenes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AlmacenKardex'
CREATE INDEX [IX_FK_AlmacenKardex]
ON [dbo].[Kardex]
    ([Almacen_Id]);
GO

-- Creating foreign key on [Producto_Id] in table 'Kardex'
ALTER TABLE [dbo].[Kardex]
ADD CONSTRAINT [FK_ProductoKardex]
    FOREIGN KEY ([Producto_Id])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductoKardex'
CREATE INDEX [IX_FK_ProductoKardex]
ON [dbo].[Kardex]
    ([Producto_Id]);
GO

-- Creating foreign key on [Empleado_Id] in table 'SolicitudesEntrada'
ALTER TABLE [dbo].[SolicitudesEntrada]
ADD CONSTRAINT [FK_EmpleadoSolicitudEntrada]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadoSolicitudEntrada'
CREATE INDEX [IX_FK_EmpleadoSolicitudEntrada]
ON [dbo].[SolicitudesEntrada]
    ([Empleado_Id]);
GO

-- Creating foreign key on [Empleado_Id] in table 'SolicitudSalidaConjunto'
ALTER TABLE [dbo].[SolicitudSalidaConjunto]
ADD CONSTRAINT [FK_SolicitudSalidaEmpleado]
    FOREIGN KEY ([Empleado_Id])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SolicitudSalidaEmpleado'
CREATE INDEX [IX_FK_SolicitudSalidaEmpleado]
ON [dbo].[SolicitudSalidaConjunto]
    ([Empleado_Id]);
GO

-- Creating foreign key on [SolicitudSalida_Id] in table 'DocumentosReferencia_GuiaSalida'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaSalida]
ADD CONSTRAINT [FK_GuiaSalidaSolicitudSalida]
    FOREIGN KEY ([SolicitudSalida_Id])
    REFERENCES [dbo].[SolicitudSalidaConjunto]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GuiaSalidaSolicitudSalida'
CREATE INDEX [IX_FK_GuiaSalidaSolicitudSalida]
ON [dbo].[DocumentosReferencia_GuiaSalida]
    ([SolicitudSalida_Id]);
GO

-- Creating foreign key on [IdProducto] in table 'DetalleSolicitudSalidaConjunto'
ALTER TABLE [dbo].[DetalleSolicitudSalidaConjunto]
ADD CONSTRAINT [FK_DetalleSolicitudSalidaProducto]
    FOREIGN KEY ([IdProducto])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdSolicitudSalida] in table 'DetalleSolicitudSalidaConjunto'
ALTER TABLE [dbo].[DetalleSolicitudSalidaConjunto]
ADD CONSTRAINT [FK_DetalleSolicitudSalidaSolicitudSalida]
    FOREIGN KEY ([IdSolicitudSalida])
    REFERENCES [dbo].[SolicitudSalidaConjunto]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DetalleSolicitudSalidaSolicitudSalida'
CREATE INDEX [IX_FK_DetalleSolicitudSalidaSolicitudSalida]
ON [dbo].[DetalleSolicitudSalidaConjunto]
    ([IdSolicitudSalida]);
GO

-- Creating foreign key on [IdGuiaSalida] in table 'DetalleGuiaSalidaConjunto'
ALTER TABLE [dbo].[DetalleGuiaSalidaConjunto]
ADD CONSTRAINT [FK_DetalleGuiaSalidaGuiaSalida]
    FOREIGN KEY ([IdGuiaSalida])
    REFERENCES [dbo].[DocumentosReferencia_GuiaSalida]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdProducto] in table 'DetalleGuiaSalidaConjunto'
ALTER TABLE [dbo].[DetalleGuiaSalidaConjunto]
ADD CONSTRAINT [FK_DetalleGuiaSalidaProducto]
    FOREIGN KEY ([IdProducto])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DetalleGuiaSalidaProducto'
CREATE INDEX [IX_FK_DetalleGuiaSalidaProducto]
ON [dbo].[DetalleGuiaSalidaConjunto]
    ([IdProducto]);
GO

-- Creating foreign key on [SolicitudProduccion_Id] in table 'DetalleSolicitudProduccionSet'
ALTER TABLE [dbo].[DetalleSolicitudProduccionSet]
ADD CONSTRAINT [FK_SolicitudProduccionDetalleSolicitudProduccion]
    FOREIGN KEY ([SolicitudProduccion_Id])
    REFERENCES [dbo].[SolicitudProduccionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SolicitudProduccionDetalleSolicitudProduccion'
CREATE INDEX [IX_FK_SolicitudProduccionDetalleSolicitudProduccion]
ON [dbo].[DetalleSolicitudProduccionSet]
    ([SolicitudProduccion_Id]);
GO

-- Creating foreign key on [OrdenTrabajo_Id] in table 'DetalleSolicitudProduccionSet'
ALTER TABLE [dbo].[DetalleSolicitudProduccionSet]
ADD CONSTRAINT [FK_OrdenTrabajoDetalleSolicitudProduccion]
    FOREIGN KEY ([OrdenTrabajo_Id])
    REFERENCES [dbo].[OrdenTrabajoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdenTrabajoDetalleSolicitudProduccion'
CREATE INDEX [IX_FK_OrdenTrabajoDetalleSolicitudProduccion]
ON [dbo].[DetalleSolicitudProduccionSet]
    ([OrdenTrabajo_Id]);
GO

-- Creating foreign key on [SolicitudInsumo_Id] in table 'DetalleSolicitudInsumoSet'
ALTER TABLE [dbo].[DetalleSolicitudInsumoSet]
ADD CONSTRAINT [FK_SolicitudInsumoDetalleSolicitudInsumo]
    FOREIGN KEY ([SolicitudInsumo_Id])
    REFERENCES [dbo].[SolicitudInsumoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SolicitudInsumoDetalleSolicitudInsumo'
CREATE INDEX [IX_FK_SolicitudInsumoDetalleSolicitudInsumo]
ON [dbo].[DetalleSolicitudInsumoSet]
    ([SolicitudInsumo_Id]);
GO

-- Creating foreign key on [ParteProduccion_Id] in table 'DetalleParteProduccionInsumoSet'
ALTER TABLE [dbo].[DetalleParteProduccionInsumoSet]
ADD CONSTRAINT [FK_ParteProduccionDetalleParteProduccionInsumo]
    FOREIGN KEY ([ParteProduccion_Id])
    REFERENCES [dbo].[ParteProduccionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ParteProduccionDetalleParteProduccionInsumo'
CREATE INDEX [IX_FK_ParteProduccionDetalleParteProduccionInsumo]
ON [dbo].[DetalleParteProduccionInsumoSet]
    ([ParteProduccion_Id]);
GO

-- Creating foreign key on [ParteProduccion_Id] in table 'DetalleParteProduccionBateriaSet'
ALTER TABLE [dbo].[DetalleParteProduccionBateriaSet]
ADD CONSTRAINT [FK_ParteProduccionDetalleParteProduccionBateria]
    FOREIGN KEY ([ParteProduccion_Id])
    REFERENCES [dbo].[ParteProduccionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ParteProduccionDetalleParteProduccionBateria'
CREATE INDEX [IX_FK_ParteProduccionDetalleParteProduccionBateria]
ON [dbo].[DetalleParteProduccionBateriaSet]
    ([ParteProduccion_Id]);
GO

-- Creating foreign key on [Bateria_Id] in table 'DetalleParteProduccionBateriaSet'
ALTER TABLE [dbo].[DetalleParteProduccionBateriaSet]
ADD CONSTRAINT [FK_BateriaDetalleParteProduccionBateria]
    FOREIGN KEY ([Bateria_Id])
    REFERENCES [dbo].[BateriaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BateriaDetalleParteProduccionBateria'
CREATE INDEX [IX_FK_BateriaDetalleParteProduccionBateria]
ON [dbo].[DetalleParteProduccionBateriaSet]
    ([Bateria_Id]);
GO

-- Creating foreign key on [PlanProduccion_Id] in table 'ProgramacionProduccionSet'
ALTER TABLE [dbo].[ProgramacionProduccionSet]
ADD CONSTRAINT [FK_PlanProduccionProgramacionProduccion]
    FOREIGN KEY ([PlanProduccion_Id])
    REFERENCES [dbo].[PlanProduccionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanProduccionProgramacionProduccion'
CREATE INDEX [IX_FK_PlanProduccionProgramacionProduccion]
ON [dbo].[ProgramacionProduccionSet]
    ([PlanProduccion_Id]);
GO

-- Creating foreign key on [PlanProduccion_Id] in table 'SolicitudProduccionSet'
ALTER TABLE [dbo].[SolicitudProduccionSet]
ADD CONSTRAINT [FK_SolicitudProduccionPlanProduccion]
    FOREIGN KEY ([PlanProduccion_Id])
    REFERENCES [dbo].[PlanProduccionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SolicitudProduccionPlanProduccion'
CREATE INDEX [IX_FK_SolicitudProduccionPlanProduccion]
ON [dbo].[SolicitudProduccionSet]
    ([PlanProduccion_Id]);
GO

-- Creating foreign key on [OrdenTrabajo_Id] in table 'DetalleOrdenTrabajoPersonalSet'
ALTER TABLE [dbo].[DetalleOrdenTrabajoPersonalSet]
ADD CONSTRAINT [FK_OrdenTrabajoDetalleOrdenTrabajoPersonal]
    FOREIGN KEY ([OrdenTrabajo_Id])
    REFERENCES [dbo].[OrdenTrabajoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdenTrabajoDetalleOrdenTrabajoPersonal'
CREATE INDEX [IX_FK_OrdenTrabajoDetalleOrdenTrabajoPersonal]
ON [dbo].[DetalleOrdenTrabajoPersonalSet]
    ([OrdenTrabajo_Id]);
GO

-- Creating foreign key on [OrdenTrabajo_Id] in table 'DetalleOrdenTrabajoInsumoSet'
ALTER TABLE [dbo].[DetalleOrdenTrabajoInsumoSet]
ADD CONSTRAINT [FK_OrdenTrabajoDetalleOrdenTrabajoInsumo]
    FOREIGN KEY ([OrdenTrabajo_Id])
    REFERENCES [dbo].[OrdenTrabajoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdenTrabajoDetalleOrdenTrabajoInsumo'
CREATE INDEX [IX_FK_OrdenTrabajoDetalleOrdenTrabajoInsumo]
ON [dbo].[DetalleOrdenTrabajoInsumoSet]
    ([OrdenTrabajo_Id]);
GO

-- Creating foreign key on [SolicitudProduccion_Id] in table 'LoteSet'
ALTER TABLE [dbo].[LoteSet]
ADD CONSTRAINT [FK_SolicitudProduccionLote]
    FOREIGN KEY ([SolicitudProduccion_Id])
    REFERENCES [dbo].[SolicitudProduccionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SolicitudProduccionLote'
CREATE INDEX [IX_FK_SolicitudProduccionLote]
ON [dbo].[LoteSet]
    ([SolicitudProduccion_Id]);
GO

-- Creating foreign key on [Lote_Id] in table 'OrdenTrabajoSet'
ALTER TABLE [dbo].[OrdenTrabajoSet]
ADD CONSTRAINT [FK_LoteOrdenTrabajo]
    FOREIGN KEY ([Lote_Id])
    REFERENCES [dbo].[LoteSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LoteOrdenTrabajo'
CREATE INDEX [IX_FK_LoteOrdenTrabajo]
ON [dbo].[OrdenTrabajoSet]
    ([Lote_Id]);
GO

-- Creating foreign key on [OrdenTrabajo_Id] in table 'DetalleOrdenTrabajoMaquinariaSet'
ALTER TABLE [dbo].[DetalleOrdenTrabajoMaquinariaSet]
ADD CONSTRAINT [FK_OrdenTrabajoDetalleOrdenTrabajoMaquinaria]
    FOREIGN KEY ([OrdenTrabajo_Id])
    REFERENCES [dbo].[OrdenTrabajoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdenTrabajoDetalleOrdenTrabajoMaquinaria'
CREATE INDEX [IX_FK_OrdenTrabajoDetalleOrdenTrabajoMaquinaria]
ON [dbo].[DetalleOrdenTrabajoMaquinariaSet]
    ([OrdenTrabajo_Id]);
GO

-- Creating foreign key on [OrdenTrabajo_Id] in table 'SolicitudInsumoSet'
ALTER TABLE [dbo].[SolicitudInsumoSet]
ADD CONSTRAINT [FK_OrdenTrabajoSolicitudInsumo]
    FOREIGN KEY ([OrdenTrabajo_Id])
    REFERENCES [dbo].[OrdenTrabajoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OrdenTrabajoSolicitudInsumo'
CREATE INDEX [IX_FK_OrdenTrabajoSolicitudInsumo]
ON [dbo].[SolicitudInsumoSet]
    ([OrdenTrabajo_Id]);
GO

-- Creating foreign key on [Maquinaria_Id] in table 'DetalleOrdenTrabajoMaquinariaSet'
ALTER TABLE [dbo].[DetalleOrdenTrabajoMaquinariaSet]
ADD CONSTRAINT [FK_MaquinariaDetalleOrdenTrabajoMaquinaria]
    FOREIGN KEY ([Maquinaria_Id])
    REFERENCES [dbo].[MaquinariaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_MaquinariaDetalleOrdenTrabajoMaquinaria'
CREATE INDEX [IX_FK_MaquinariaDetalleOrdenTrabajoMaquinaria]
ON [dbo].[DetalleOrdenTrabajoMaquinariaSet]
    ([Maquinaria_Id]);
GO

-- Creating foreign key on [idEntrega] in table 'Backorder'
ALTER TABLE [dbo].[Backorder]
ADD CONSTRAINT [fk_Backorder_Entrega1]
    FOREIGN KEY ([idEntrega])
    REFERENCES [dbo].[Entrega]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Backorder_Entrega1'
CREATE INDEX [IX_fk_Backorder_Entrega1]
ON [dbo].[Backorder]
    ([idEntrega]);
GO

-- Creating foreign key on [idBackorder] in table 'ProductoBackOrder'
ALTER TABLE [dbo].[ProductoBackOrder]
ADD CONSTRAINT [fk_ProductoBackOrder_Backorder1]
    FOREIGN KEY ([idBackorder])
    REFERENCES [dbo].[Backorder]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_ProductoBackOrder_Backorder1'
CREATE INDEX [IX_fk_ProductoBackOrder_Backorder1]
ON [dbo].[ProductoBackOrder]
    ([idBackorder]);
GO

-- Creating foreign key on [idCalendario] in table 'DisponibilidadRecurso'
ALTER TABLE [dbo].[DisponibilidadRecurso]
ADD CONSTRAINT [fk_DisponibilidadRecurso_Calendario1]
    FOREIGN KEY ([idCalendario])
    REFERENCES [dbo].[Calendario]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idCalendario] in table 'DisponibilidadTransporte'
ALTER TABLE [dbo].[DisponibilidadTransporte]
ADD CONSTRAINT [fk_DisponibilidadTransporte_Calendario1]
    FOREIGN KEY ([idCalendario])
    REFERENCES [dbo].[Calendario]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idCalendario] in table 'HojaRutaRecurso'
ALTER TABLE [dbo].[HojaRutaRecurso]
ADD CONSTRAINT [fk_HojaRutaRecurso_Calendario1]
    FOREIGN KEY ([idCalendario])
    REFERENCES [dbo].[Calendario]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_HojaRutaRecurso_Calendario1'
CREATE INDEX [IX_fk_HojaRutaRecurso_Calendario1]
ON [dbo].[HojaRutaRecurso]
    ([idCalendario]);
GO

-- Creating foreign key on [idCargo] in table 'Empleados'
ALTER TABLE [dbo].[Empleados]
ADD CONSTRAINT [FK__Empleados__Cargo]
    FOREIGN KEY ([idCargo])
    REFERENCES [dbo].[Cargo]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Empleados__Cargo'
CREATE INDEX [IX_FK__Empleados__Cargo]
ON [dbo].[Empleados]
    ([idCargo]);
GO

-- Creating foreign key on [idEstadoCliente] in table 'Cliente'
ALTER TABLE [dbo].[Cliente]
ADD CONSTRAINT [FK_Cliente_EstadoCliente1]
    FOREIGN KEY ([idEstadoCliente])
    REFERENCES [dbo].[EstadoCliente]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Cliente_EstadoCliente1'
CREATE INDEX [IX_FK_Cliente_EstadoCliente1]
ON [dbo].[Cliente]
    ([idEstadoCliente]);
GO

-- Creating foreign key on [IdTipoCliente] in table 'Cliente'
ALTER TABLE [dbo].[Cliente]
ADD CONSTRAINT [FK_Cliente_TipoCliente]
    FOREIGN KEY ([IdTipoCliente])
    REFERENCES [dbo].[TipoCliente]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Cliente_TipoCliente'
CREATE INDEX [IX_FK_Cliente_TipoCliente]
ON [dbo].[Cliente]
    ([IdTipoCliente]);
GO

-- Creating foreign key on [idTipoDocumento] in table 'Cliente'
ALTER TABLE [dbo].[Cliente]
ADD CONSTRAINT [FK_Cliente_TipoDocumento1]
    FOREIGN KEY ([idTipoDocumento])
    REFERENCES [dbo].[TipoDocumento]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Cliente_TipoDocumento1'
CREATE INDEX [IX_FK_Cliente_TipoDocumento1]
ON [dbo].[Cliente]
    ([idTipoDocumento]);
GO

-- Creating foreign key on [idCliente] in table 'Direccion'
ALTER TABLE [dbo].[Direccion]
ADD CONSTRAINT [FK_Direccion_Cliente1]
    FOREIGN KEY ([idCliente])
    REFERENCES [dbo].[Cliente]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Direccion_Cliente1'
CREATE INDEX [IX_FK_Direccion_Cliente1]
ON [dbo].[Direccion]
    ([idCliente]);
GO

-- Creating foreign key on [idCliente] in table 'Entrega'
ALTER TABLE [dbo].[Entrega]
ADD CONSTRAINT [fk_Entrega_Cliente1]
    FOREIGN KEY ([idCliente])
    REFERENCES [dbo].[Cliente]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Entrega_Cliente1'
CREATE INDEX [IX_fk_Entrega_Cliente1]
ON [dbo].[Entrega]
    ([idCliente]);
GO

-- Creating foreign key on [idCliente] in table 'Factura'
ALTER TABLE [dbo].[Factura]
ADD CONSTRAINT [FK_Factura_Cliente1]
    FOREIGN KEY ([idCliente])
    REFERENCES [dbo].[Cliente]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Factura_Cliente1'
CREATE INDEX [IX_FK_Factura_Cliente1]
ON [dbo].[Factura]
    ([idCliente]);
GO

-- Creating foreign key on [idCliente] in table 'HojaRutaDetalle'
ALTER TABLE [dbo].[HojaRutaDetalle]
ADD CONSTRAINT [fk_HojaRutaDetalle_Cliente1]
    FOREIGN KEY ([idCliente])
    REFERENCES [dbo].[Cliente]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_HojaRutaDetalle_Cliente1'
CREATE INDEX [IX_fk_HojaRutaDetalle_Cliente1]
ON [dbo].[HojaRutaDetalle]
    ([idCliente]);
GO

-- Creating foreign key on [idCliente] in table 'Pedido'
ALTER TABLE [dbo].[Pedido]
ADD CONSTRAINT [FK_Pedido_Cliente1]
    FOREIGN KEY ([idCliente])
    REFERENCES [dbo].[Cliente]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Pedido_Cliente1'
CREATE INDEX [IX_FK_Pedido_Cliente1]
ON [dbo].[Pedido]
    ([idCliente]);
GO

-- Creating foreign key on [idTipoDireccion] in table 'Direccion'
ALTER TABLE [dbo].[Direccion]
ADD CONSTRAINT [FK_Direccion_TipoDireccion1]
    FOREIGN KEY ([idTipoDireccion])
    REFERENCES [dbo].[TipoDireccion]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Direccion_TipoDireccion1'
CREATE INDEX [IX_FK_Direccion_TipoDireccion1]
ON [dbo].[Direccion]
    ([idTipoDireccion]);
GO

-- Creating foreign key on [idUbigeo] in table 'Direccion'
ALTER TABLE [dbo].[Direccion]
ADD CONSTRAINT [fk_Direccion_Ubigeo1]
    FOREIGN KEY ([idUbigeo])
    REFERENCES [dbo].[Ubigeo]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Direccion_Ubigeo1'
CREATE INDEX [IX_fk_Direccion_Ubigeo1]
ON [dbo].[Direccion]
    ([idUbigeo]);
GO

-- Creating foreign key on [idZonaDespacho] in table 'Direccion'
ALTER TABLE [dbo].[Direccion]
ADD CONSTRAINT [FK_Direccion_ZonaDespacho1]
    FOREIGN KEY ([idZonaDespacho])
    REFERENCES [dbo].[ZonaDespacho]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Direccion_ZonaDespacho1'
CREATE INDEX [IX_FK_Direccion_ZonaDespacho1]
ON [dbo].[Direccion]
    ([idZonaDespacho]);
GO

-- Creating foreign key on [idDireccion] in table 'Entrega'
ALTER TABLE [dbo].[Entrega]
ADD CONSTRAINT [fk_Entrega_Direccion1]
    FOREIGN KEY ([idDireccion])
    REFERENCES [dbo].[Direccion]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Entrega_Direccion1'
CREATE INDEX [IX_fk_Entrega_Direccion1]
ON [dbo].[Entrega]
    ([idDireccion]);
GO

-- Creating foreign key on [idDireccion] in table 'Factura'
ALTER TABLE [dbo].[Factura]
ADD CONSTRAINT [fk_Factura_Direccion1]
    FOREIGN KEY ([idDireccion])
    REFERENCES [dbo].[Direccion]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Factura_Direccion1'
CREATE INDEX [IX_fk_Factura_Direccion1]
ON [dbo].[Factura]
    ([idDireccion]);
GO

-- Creating foreign key on [idDireccion] in table 'HojaRutaDetalle'
ALTER TABLE [dbo].[HojaRutaDetalle]
ADD CONSTRAINT [fk_HojaRutaDetalle_Direccion1]
    FOREIGN KEY ([idDireccion])
    REFERENCES [dbo].[Direccion]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_HojaRutaDetalle_Direccion1'
CREATE INDEX [IX_fk_HojaRutaDetalle_Direccion1]
ON [dbo].[HojaRutaDetalle]
    ([idDireccion]);
GO

-- Creating foreign key on [idDireccion] in table 'Pedido'
ALTER TABLE [dbo].[Pedido]
ADD CONSTRAINT [fk_Pedido_Direccion1]
    FOREIGN KEY ([idDireccion])
    REFERENCES [dbo].[Direccion]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Pedido_Direccion1'
CREATE INDEX [IX_fk_Pedido_Direccion1]
ON [dbo].[Pedido]
    ([idDireccion]);
GO

-- Creating foreign key on [idEmpleado] in table 'DisponibilidadRecurso'
ALTER TABLE [dbo].[DisponibilidadRecurso]
ADD CONSTRAINT [fk_DisponibilidadRecurso_Empleado1]
    FOREIGN KEY ([idEmpleado])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_DisponibilidadRecurso_Empleado1'
CREATE INDEX [IX_fk_DisponibilidadRecurso_Empleado1]
ON [dbo].[DisponibilidadRecurso]
    ([idEmpleado]);
GO

-- Creating foreign key on [idTransporte] in table 'DisponibilidadTransporte'
ALTER TABLE [dbo].[DisponibilidadTransporte]
ADD CONSTRAINT [fk_DisponibilidadTransporte_Transporte1]
    FOREIGN KEY ([idTransporte])
    REFERENCES [dbo].[Transporte]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_DisponibilidadTransporte_Transporte1'
CREATE INDEX [IX_fk_DisponibilidadTransporte_Transporte1]
ON [dbo].[DisponibilidadTransporte]
    ([idTransporte]);
GO

-- Creating foreign key on [idRecurso] in table 'HojaRutaRecurso'
ALTER TABLE [dbo].[HojaRutaRecurso]
ADD CONSTRAINT [fk_HojaRutaRecurso_Recurso1]
    FOREIGN KEY ([idRecurso])
    REFERENCES [dbo].[Empleados]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idEstadoEntrega] in table 'Entrega'
ALTER TABLE [dbo].[Entrega]
ADD CONSTRAINT [fk_Entrega_EstadoEntrega1]
    FOREIGN KEY ([idEstadoEntrega])
    REFERENCES [dbo].[EstadoEntrega]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Entrega_EstadoEntrega1'
CREATE INDEX [IX_fk_Entrega_EstadoEntrega1]
ON [dbo].[Entrega]
    ([idEstadoEntrega]);
GO

-- Creating foreign key on [idMotivoTraslado] in table 'Entrega'
ALTER TABLE [dbo].[Entrega]
ADD CONSTRAINT [fk_Entrega_MotivoTraslado1]
    FOREIGN KEY ([idMotivoTraslado])
    REFERENCES [dbo].[MotivoTraslado]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Entrega_MotivoTraslado1'
CREATE INDEX [IX_fk_Entrega_MotivoTraslado1]
ON [dbo].[Entrega]
    ([idMotivoTraslado]);
GO

-- Creating foreign key on [idZonaDespacho] in table 'Entrega'
ALTER TABLE [dbo].[Entrega]
ADD CONSTRAINT [fk_Entrega_ZonaDespacho1]
    FOREIGN KEY ([idZonaDespacho])
    REFERENCES [dbo].[ZonaDespacho]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Entrega_ZonaDespacho1'
CREATE INDEX [IX_fk_Entrega_ZonaDespacho1]
ON [dbo].[Entrega]
    ([idZonaDespacho]);
GO

-- Creating foreign key on [idEntrega] in table 'EntregaDetalle'
ALTER TABLE [dbo].[EntregaDetalle]
ADD CONSTRAINT [fk_EntregaDetalle_Entrega1]
    FOREIGN KEY ([idEntrega])
    REFERENCES [dbo].[Entrega]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_EntregaDetalle_Entrega1'
CREATE INDEX [IX_fk_EntregaDetalle_Entrega1]
ON [dbo].[EntregaDetalle]
    ([idEntrega]);
GO

-- Creating foreign key on [idProducto] in table 'EntregaDetalle'
ALTER TABLE [dbo].[EntregaDetalle]
ADD CONSTRAINT [fk_EntregaDetalle_Producto1]
    FOREIGN KEY ([idProducto])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_EntregaDetalle_Producto1'
CREATE INDEX [IX_fk_EntregaDetalle_Producto1]
ON [dbo].[EntregaDetalle]
    ([idProducto]);
GO

-- Creating foreign key on [idEntregaDetalle] in table 'FacturaEntrega'
ALTER TABLE [dbo].[FacturaEntrega]
ADD CONSTRAINT [fk_FacturaEntrega_EntregaDetalle1]
    FOREIGN KEY ([idEntregaDetalle])
    REFERENCES [dbo].[EntregaDetalle]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_FacturaEntrega_EntregaDetalle1'
CREATE INDEX [IX_fk_FacturaEntrega_EntregaDetalle1]
ON [dbo].[FacturaEntrega]
    ([idEntregaDetalle]);
GO

-- Creating foreign key on [idEntregaDetalle] in table 'PedidoEntrega'
ALTER TABLE [dbo].[PedidoEntrega]
ADD CONSTRAINT [fk_PedidoEntrega_EntregaDetalle1]
    FOREIGN KEY ([idEntregaDetalle])
    REFERENCES [dbo].[EntregaDetalle]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idEstadoFactura] in table 'Factura'
ALTER TABLE [dbo].[Factura]
ADD CONSTRAINT [fk_Factura_EstadoFactura1]
    FOREIGN KEY ([idEstadoFactura])
    REFERENCES [dbo].[EstadoFactura]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Factura_EstadoFactura1'
CREATE INDEX [IX_fk_Factura_EstadoFactura1]
ON [dbo].[Factura]
    ([idEstadoFactura]);
GO

-- Creating foreign key on [idEstadoHojaRuta] in table 'HojaRuta'
ALTER TABLE [dbo].[HojaRuta]
ADD CONSTRAINT [fk_HojaRuta_EstadoHojaRuta1]
    FOREIGN KEY ([idEstadoHojaRuta])
    REFERENCES [dbo].[EstadoHojaRuta]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_HojaRuta_EstadoHojaRuta1'
CREATE INDEX [IX_fk_HojaRuta_EstadoHojaRuta1]
ON [dbo].[HojaRuta]
    ([idEstadoHojaRuta]);
GO

-- Creating foreign key on [idEstadoHojaRutaDetalle] in table 'HojaRutaDetalle'
ALTER TABLE [dbo].[HojaRutaDetalle]
ADD CONSTRAINT [fk_temHojaRutaDetalle_EstadoHojaRutaDetalle1]
    FOREIGN KEY ([idEstadoHojaRutaDetalle])
    REFERENCES [dbo].[EstadoHojaRutaDetalle]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_temHojaRutaDetalle_EstadoHojaRutaDetalle1'
CREATE INDEX [IX_fk_temHojaRutaDetalle_EstadoHojaRutaDetalle1]
ON [dbo].[HojaRutaDetalle]
    ([idEstadoHojaRutaDetalle]);
GO

-- Creating foreign key on [idEstadoPedido] in table 'Pedido'
ALTER TABLE [dbo].[Pedido]
ADD CONSTRAINT [fk_Pedido_EstadoPedido1]
    FOREIGN KEY ([idEstadoPedido])
    REFERENCES [dbo].[EstadoPedido]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Pedido_EstadoPedido1'
CREATE INDEX [IX_fk_Pedido_EstadoPedido1]
ON [dbo].[Pedido]
    ([idEstadoPedido]);
GO

-- Creating foreign key on [idFactura] in table 'FacturaDetalle'
ALTER TABLE [dbo].[FacturaDetalle]
ADD CONSTRAINT [fk_FacturaDetalle_Factura1]
    FOREIGN KEY ([idFactura])
    REFERENCES [dbo].[Factura]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_FacturaDetalle_Factura1'
CREATE INDEX [IX_fk_FacturaDetalle_Factura1]
ON [dbo].[FacturaDetalle]
    ([idFactura]);
GO

-- Creating foreign key on [idProducto] in table 'FacturaDetalle'
ALTER TABLE [dbo].[FacturaDetalle]
ADD CONSTRAINT [fk_FacturaDetalle_Producto1]
    FOREIGN KEY ([idProducto])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_FacturaDetalle_Producto1'
CREATE INDEX [IX_fk_FacturaDetalle_Producto1]
ON [dbo].[FacturaDetalle]
    ([idProducto]);
GO

-- Creating foreign key on [idFacturaDetalle] in table 'FacturaEntrega'
ALTER TABLE [dbo].[FacturaEntrega]
ADD CONSTRAINT [fk_FacturaEntrega_FacturaDetalle1]
    FOREIGN KEY ([idFacturaDetalle])
    REFERENCES [dbo].[FacturaDetalle]
        ([idFacturaDetalle])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idTransporte] in table 'HojaRuta'
ALTER TABLE [dbo].[HojaRuta]
ADD CONSTRAINT [fk_HojaRuta_Transporte1]
    FOREIGN KEY ([idTransporte])
    REFERENCES [dbo].[Transporte]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_HojaRuta_Transporte1'
CREATE INDEX [IX_fk_HojaRuta_Transporte1]
ON [dbo].[HojaRuta]
    ([idTransporte]);
GO

-- Creating foreign key on [idZonaDespacho] in table 'HojaRuta'
ALTER TABLE [dbo].[HojaRuta]
ADD CONSTRAINT [fk_HojaRuta_ZonaDespacho1]
    FOREIGN KEY ([idZonaDespacho])
    REFERENCES [dbo].[ZonaDespacho]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_HojaRuta_ZonaDespacho1'
CREATE INDEX [IX_fk_HojaRuta_ZonaDespacho1]
ON [dbo].[HojaRuta]
    ([idZonaDespacho]);
GO

-- Creating foreign key on [idHojaRuta] in table 'HojaRutaDetalle'
ALTER TABLE [dbo].[HojaRutaDetalle]
ADD CONSTRAINT [fk_HojaRutaDetalle_HojaRuta1]
    FOREIGN KEY ([idHojaRuta])
    REFERENCES [dbo].[HojaRuta]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_HojaRutaDetalle_HojaRuta1'
CREATE INDEX [IX_fk_HojaRutaDetalle_HojaRuta1]
ON [dbo].[HojaRutaDetalle]
    ([idHojaRuta]);
GO

-- Creating foreign key on [idHojaRuta] in table 'HojaRutaRecurso'
ALTER TABLE [dbo].[HojaRutaRecurso]
ADD CONSTRAINT [fk_HojaRutaRecurso_HojaRuta1]
    FOREIGN KEY ([idHojaRuta])
    REFERENCES [dbo].[HojaRuta]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_HojaRutaRecurso_HojaRuta1'
CREATE INDEX [IX_fk_HojaRutaRecurso_HojaRuta1]
ON [dbo].[HojaRutaRecurso]
    ([idHojaRuta]);
GO

-- Creating foreign key on [idMarca] in table 'Transporte'
ALTER TABLE [dbo].[Transporte]
ADD CONSTRAINT [fk_Transporte_Marca1]
    FOREIGN KEY ([idMarca])
    REFERENCES [dbo].[Marca]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Transporte_Marca1'
CREATE INDEX [IX_fk_Transporte_Marca1]
ON [dbo].[Transporte]
    ([idMarca]);
GO

-- Creating foreign key on [idTipoPedido] in table 'Pedido'
ALTER TABLE [dbo].[Pedido]
ADD CONSTRAINT [fk_Pedido_tipoPedido1]
    FOREIGN KEY ([idTipoPedido])
    REFERENCES [dbo].[TipoPedido]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Pedido_tipoPedido1'
CREATE INDEX [IX_fk_Pedido_tipoPedido1]
ON [dbo].[Pedido]
    ([idTipoPedido]);
GO

-- Creating foreign key on [idPedido] in table 'PedidoDetalle'
ALTER TABLE [dbo].[PedidoDetalle]
ADD CONSTRAINT [fk_PedidoDetalle_Pedido1]
    FOREIGN KEY ([idPedido])
    REFERENCES [dbo].[Pedido]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_PedidoDetalle_Pedido1'
CREATE INDEX [IX_fk_PedidoDetalle_Pedido1]
ON [dbo].[PedidoDetalle]
    ([idPedido]);
GO

-- Creating foreign key on [idProducto] in table 'PedidoDetalle'
ALTER TABLE [dbo].[PedidoDetalle]
ADD CONSTRAINT [fk_PedidoDetalle_Producto1]
    FOREIGN KEY ([idProducto])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_PedidoDetalle_Producto1'
CREATE INDEX [IX_fk_PedidoDetalle_Producto1]
ON [dbo].[PedidoDetalle]
    ([idProducto]);
GO

-- Creating foreign key on [idPedidoDetalle] in table 'PedidoEntrega'
ALTER TABLE [dbo].[PedidoEntrega]
ADD CONSTRAINT [fk_PedidoEntrega_PedidoDetalle1]
    FOREIGN KEY ([idPedidoDetalle])
    REFERENCES [dbo].[PedidoDetalle]
        ([idPedidoDetalle])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_PedidoEntrega_PedidoDetalle1'
CREATE INDEX [IX_fk_PedidoEntrega_PedidoDetalle1]
ON [dbo].[PedidoEntrega]
    ([idPedidoDetalle]);
GO

-- Creating foreign key on [idProducto] in table 'ProductoBackOrder'
ALTER TABLE [dbo].[ProductoBackOrder]
ADD CONSTRAINT [fk_ProductoBackOrder_Producto1]
    FOREIGN KEY ([idProducto])
    REFERENCES [dbo].[Productos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [idTipoTransporte] in table 'Transporte'
ALTER TABLE [dbo].[Transporte]
ADD CONSTRAINT [fk_Transporte_TipoTransporte1]
    FOREIGN KEY ([idTipoTransporte])
    REFERENCES [dbo].[TipoTransporte]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Transporte_TipoTransporte1'
CREATE INDEX [IX_fk_Transporte_TipoTransporte1]
ON [dbo].[Transporte]
    ([idTipoTransporte]);
GO

-- Creating foreign key on [Id] in table 'DocumentosReferencia_GuiaEntrada'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada]
ADD CONSTRAINT [FK_GuiaEntrada_inherits_DocumentoReferencia]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[DocumentosReferencia]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'DocumentosReferencia_GuiaSalida'
ALTER TABLE [dbo].[DocumentosReferencia_GuiaSalida]
ADD CONSTRAINT [FK_GuiaSalida_inherits_DocumentoReferencia]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[DocumentosReferencia]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------