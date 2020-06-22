using AutoMapper;
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

			CreateMap<RegisterForAppointmentDto, AppointmentAccount>();

			CreateMap<Account, AccountDto>();
			CreateMap<RegisterDto, Account>();
			CreateMap<LoginDto, Account>();
		}
	}
}
