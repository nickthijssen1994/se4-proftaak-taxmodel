using AutoMapper;
using backend.DAL.Repositories;
using backend.Models;
using backend.Models.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Services
{
    public class AppointmentService : IAppointmentService
    {
        private readonly AppointmentRepository _repo;
        private readonly IMapper _mapper;
        public AppointmentService(AppointmentRepository repo, IMapper mapper)
        {
            _mapper = mapper;
            _repo = repo;
        }
        public AppointmentDto GetById(long id)
        {
            Appointment appointment  = _repo.GetEntityById(id);
            return _mapper.Map<AppointmentDto>(appointment);
        }
        public IEnumerable<AppointmentDto> GetAll()
        {
            IEnumerable<Appointment> appointments = _repo.GetEntities(null, a => a.Organiser);
            return _mapper.Map<IEnumerable<AppointmentDto>>(appointments);
        }
        public IEnumerable<AppointmentDto> GetWithinTimeSpan(AppointmentsWithinTimespanDto dto)
        {
            List<Appointment> appointments = _repo.GetEntities<Appointment>(
                a => a.BeginTime >= dto.BeginTime && a.EndTime <= dto.EndTime
                ).ToList();

            return _mapper.Map<IEnumerable<AppointmentDto>>(appointments);
        }

        public void Create(CreateAppointmentDto dto)
        {
            Appointment appointment = _mapper.Map<Appointment>(dto);
            _repo.InsertEntity(appointment);
            _repo.Save();
        }

        public void Update(UpdateAppointmentDto dto)
        {
            Appointment appointment = _mapper.Map<Appointment>(dto);
            _repo.UpdateEntity(appointment);
            _repo.Save();
        }

        public void Delete(AppointmentDto dto)
        {
            Appointment appointment = _mapper.Map<Appointment>(dto);
            _repo.DeleteEntity(appointment);
            _repo.Save();
        }
    }
}
