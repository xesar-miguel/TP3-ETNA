using AutoMapper;
using ETNA.Common;
using ETNA.Domain;
using ETNA.MVC.Models.LO;
using ETNA.MVC.Models.DI;
namespace ETNA.MVC
{
    public class AutoMapperConfiguration
    {
        public static void Configure()
        {
            Mapper.Initialize(cfg =>
            {
                cfg.AddProfile(new MapperUserProfile());
            });
        }
    }

    public class MapperUserProfile : Profile
    {
        protected override void Configure()
        {
            Mapper.CreateMap<Almacen, AlmacenViewModel>();
            Mapper.CreateMap<Vehiculo, VehiculoViewModel>();
            Mapper.CreateMap<SolicitudEntrada, ListaSolicitudEntradaViewModel>()
                .ForMember(s => s.TipoEntrada, opts => opts.MapFrom(src => Enums.GetEnumDescription((Enums.TipoEntrada)src.TipoEntrada)))
                .ForMember(s => s.NombreEmpleado, opts => opts.MapFrom(src => src.Empleado.Nombres + ' ' + src.Empleado.Apellidos));

            Mapper.CreateMap<DetalleSolicitudEntrada, DetalleSolicitudEntradaViewModel>()
                .ForMember(d => d.Id, opts => opts.MapFrom(src => src.Producto.Id))
                .ForMember(d => d.NombreProducto, opts => opts.MapFrom(src => src.Producto.Nombre));
            Mapper.CreateMap<SolicitudEntrada, SolicitudEntradaViewModel>()
                .ForMember(s => s.TipoEntrada,
                    opts => opts.MapFrom(src => Enums.GetEnumDescription((Enums.TipoEntrada)src.TipoEntrada)))
                .ForMember(s => s.NombreEmpleado,
                    opts => opts.MapFrom(src => src.Empleado.Nombres + ' ' + src.Empleado.Apellidos))
                .ForMember(s => s.Detalle,
                    opts => opts.MapFrom(src => src.SolicitudEntradaProducto));
            
            Mapper.CreateMap<SolicitudSalida, ListaSolicitudSalidaViewModel>()
                .ForMember(s => s.Estado, opts => opts.MapFrom(src => Enums.GetEnumDescription((Enums.EstadoSolicitudSalida)src.Estado)))
                .ForMember(s => s.TipoSalida, opts => opts.MapFrom(src => Enums.GetEnumDescription((Enums.TipoSalida)src.TipoSalida)))
                .ForMember(s => s.NombreEmpleado, opts => opts.MapFrom(src => src.Empleado.Nombres + ' ' + src.Empleado.Apellidos));
            
            Mapper.CreateMap<DetalleSolicitudSalida, DetalleSolicitudSalidaViewModel>()
                .ForMember(d => d.Id, opts => opts.MapFrom(src => src.Producto.Id))
                .ForMember(d => d.NombreProducto, opts => opts.MapFrom(src => src.Producto.Nombre));
            Mapper.CreateMap<SolicitudSalida, SolicitudSalidaViewModel>()
                .ForMember(s => s.TipoSalida,
                    opts => opts.MapFrom(src => Enums.GetEnumDescription((Enums.TipoSalida)src.TipoSalida)))
                .ForMember(s => s.NombreEmpleado,
                    opts => opts.MapFrom(src => src.Empleado.Nombres + ' ' + src.Empleado.Apellidos))
                .ForMember(s => s.Detalle,
                    opts => opts.MapFrom(src => src.DetalleSolicitudSalida));
        }
    }
}


