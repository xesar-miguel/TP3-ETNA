
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/02/2015 16:06:12
-- Generated from EDMX file: D:\Proyectos\TP3\Etna\TP3-ETNA\ETNA.DAL\ETNADbModel.edmx
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
IF OBJECT_ID(N'[dbo].[FK_LoteTipoLote]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Lotes] DROP CONSTRAINT [FK_LoteTipoLote];
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
IF OBJECT_ID(N'[dbo].[FK_GuiaEntrada_inherits_DocumentoReferencia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_GuiaEntrada] DROP CONSTRAINT [FK_GuiaEntrada_inherits_DocumentoReferencia];
GO
IF OBJECT_ID(N'[dbo].[FK_GuiaSalida_inherits_DocumentoReferencia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_GuiaSalida] DROP CONSTRAINT [FK_GuiaSalida_inherits_DocumentoReferencia];
GO
IF OBJECT_ID(N'[dbo].[FK_AjusteInventario_inherits_DocumentoReferencia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DocumentosReferencia_AjusteInventario] DROP CONSTRAINT [FK_AjusteInventario_inherits_DocumentoReferencia];
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
IF OBJECT_ID(N'[dbo].[Lotes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Lotes];
GO
IF OBJECT_ID(N'[dbo].[TipoLotes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoLotes];
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
IF OBJECT_ID(N'[dbo].[prueba]', 'U') IS NOT NULL
    DROP TABLE [dbo].[prueba];
GO
IF OBJECT_ID(N'[dbo].[DocumentosReferencia_GuiaEntrada]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentosReferencia_GuiaEntrada];
GO
IF OBJECT_ID(N'[dbo].[DocumentosReferencia_GuiaSalida]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentosReferencia_GuiaSalida];
GO
IF OBJECT_ID(N'[dbo].[DocumentosReferencia_AjusteInventario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DocumentosReferencia_AjusteInventario];
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
    [Estado] int  NOT NULL
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

-- Creating table 'Lotes'
CREATE TABLE [dbo].[Lotes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NroLote] nvarchar(max)  NOT NULL,
    [FechaCreacion] datetime  NOT NULL,
    [TipoLote_Id] int  NOT NULL
);
GO

-- Creating table 'TipoLotes'
CREATE TABLE [dbo].[TipoLotes] (
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

-- Creating table 'Vehiculos'
CREATE TABLE [dbo].[Vehiculos] (
    [id] int IDENTITY(1,1) NOT NULL,
    [marca] varchar(50)  NULL,
    [placa] nvarchar(max)  NOT NULL
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

-- Creating table 'DocumentosReferencia_AjusteInventario'
CREATE TABLE [dbo].[DocumentosReferencia_AjusteInventario] (
    [Estado] int  NOT NULL,
    [Id] int  NOT NULL
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

-- Creating primary key on [Id] in table 'Lotes'
ALTER TABLE [dbo].[Lotes]
ADD CONSTRAINT [PK_Lotes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TipoLotes'
ALTER TABLE [dbo].[TipoLotes]
ADD CONSTRAINT [PK_TipoLotes]
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

-- Creating primary key on [id] in table 'Vehiculos'
ALTER TABLE [dbo].[Vehiculos]
ADD CONSTRAINT [PK_Vehiculos]
    PRIMARY KEY CLUSTERED ([id] ASC);
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

-- Creating primary key on [Id] in table 'DocumentosReferencia_AjusteInventario'
ALTER TABLE [dbo].[DocumentosReferencia_AjusteInventario]
ADD CONSTRAINT [PK_DocumentosReferencia_AjusteInventario]
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

-- Creating foreign key on [TipoLote_Id] in table 'Lotes'
ALTER TABLE [dbo].[Lotes]
ADD CONSTRAINT [FK_LoteTipoLote]
    FOREIGN KEY ([TipoLote_Id])
    REFERENCES [dbo].[TipoLotes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LoteTipoLote'
CREATE INDEX [IX_FK_LoteTipoLote]
ON [dbo].[Lotes]
    ([TipoLote_Id]);
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

-- Creating foreign key on [Id] in table 'DocumentosReferencia_AjusteInventario'
ALTER TABLE [dbo].[DocumentosReferencia_AjusteInventario]
ADD CONSTRAINT [FK_AjusteInventario_inherits_DocumentoReferencia]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[DocumentosReferencia]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------