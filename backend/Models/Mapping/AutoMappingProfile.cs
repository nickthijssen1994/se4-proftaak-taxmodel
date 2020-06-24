using AutoMapper;
using backend.DAL.Repositories;
using backend.Models.DTOs;
using backend.Models.DTOs.Accounts;

namespace backend.Models.Mapping
{
	public class AutoMappingProfile : Profile
	{
        public AutoMappingProfile()
		{
            CreateMap<Appointment, AppointmentDto>()
                .ForMember(a => a.PeopleCount, pc => pc.MapFrom(a => a.AccountsRegistered.Count));
                
            CreateMap<CreateAppointmentDto, Appointment>();
            CreateMap<UpdateAppointmentDto, Appointment>();
            CreateMap<AppointmentDto, Appointment>();


            CreateMap<CreateAppointmentDto, Appointment>().ForMember(a => a.Organiser,
                                                                     opt => opt.MapFrom<CreateAppointmentResolver>());

            CreateMap<RegisterForAppointmentDto, AppointmentAccount>();

            CreateMap<OrganiserDto, Account>();
            CreateMap<Account, OrganiserDto>();
            CreateMap<Account, AccountDto>();
            CreateMap<RegisterDto, Account>();
            CreateMap<LoginDto, Account>();
        }
	}
}
