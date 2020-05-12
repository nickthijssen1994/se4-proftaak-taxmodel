using AutoMapper;
using backend.Models.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models.Mapping
{
    public class AutoMappingProfile : Profile
    {
        public AutoMappingProfile()
        {
            CreateMap<Appointment, AppointmentDto>();
            CreateMap<CreateAppointmentDto, Appointment>();
            CreateMap<UpdateAppointmentDto, Appointment>();
        }
    }
}
