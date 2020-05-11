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
            Appointment appointment  = _repo.GetByID(id);
            return _mapper.Map<AppointmentDto>(appointment);

        }
        public IEnumerable<AppointmentDto> GetAll()
        {
            IEnumerable<Appointment> appointments = _repo.Get(null, null, a => a.Organiser);
            return _mapper.Map<IEnumerable<AppointmentDto>>(appointments);
        }

        public void Create(CreateAppointmentDto dto)
        {
            Appointment appointment = _mapper.Map<Appointment>(dto);
            _repo.Insert(appointment);
            _repo.Save();
        }

        public void Update(AppointmentDto dto)
        {
            Appointment appointment = _mapper.Map<Appointment>(dto);
            _repo.Update(appointment);
            _repo.Save();
        }

        public void Delete(AppointmentDto dto)
        {
            Appointment appointment = _mapper.Map<Appointment>(dto);
            _repo.Delete(appointment);
            _repo.Save();
        }
    }
}
