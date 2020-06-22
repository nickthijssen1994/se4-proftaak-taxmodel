using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using AutoMapper;
using backend.DAL.Repositories;
using backend.Models;
using backend.Models.DTOs;

namespace backend.Services
{
    //TODO: Look at automatically loading the foreign properties instead of using the conveluted include
    public class AppointmentService : IAppointmentService
    {
        private static readonly Expression<Func<Appointment, object>>[] includes =
        {
            a => a.AccountsRegistered,
            o => o.Organiser
        };

        private readonly IMapper _mapper;
        private readonly AppointmentRepository _repo;

        public AppointmentService(AppointmentRepository repo, IMapper mapper)
        {
            _mapper = mapper;
            _repo = repo;
        }

        public AppointmentDto GetById(long id)
        {
            var appointment = _repo.GetEntities(x => x.Id == id, includes).FirstOrDefault();
            return _mapper.Map<AppointmentDto>(appointment);
        }

        public IEnumerable<AppointmentDto> GetAll()
        {
            var appointments = _repo.GetEntities(includes: includes);

            return _mapper.Map<IEnumerable<AppointmentDto>>(appointments);
        }

        public IEnumerable<AppointmentDto> GetWithinTimeSpan(AppointmentsWithinTimespanDto dto)
        {
            var appointments = _repo.GetEntities<Appointment>(
                a => a.BeginTime >= dto.BeginTime && a.EndTime <= dto.EndTime
            ).ToList();

            return _mapper.Map<IEnumerable<AppointmentDto>>(appointments);
        }

        public bool RegisterForAppointment(RegisterForAppointmentDto dto)
        {
            var appointment = _repo.GetEntities(x => x.Id == dto.AppointmentId, includes).FirstOrDefault();

            var aa = _mapper.Map<AppointmentAccount>(dto);

            if (IsRegisteredForAppointment(dto) || appointment == null ||
                appointment.AccountsRegistered.Count + 1 > appointment.MaxPeople)
                return false;

            appointment.AccountsRegistered.Add(aa);

            _repo.UpdateEntity(appointment);
            _repo.Save();
            return true;
        }

        public void Create(CreateAppointmentDto dto)
        {
            var appointment = _mapper.Map<Appointment>(dto);
            _repo.InsertEntity(appointment);
            _repo.Save();
        }

        public void Update(UpdateAppointmentDto dto)
        {
            var appointment = _mapper.Map<Appointment>(dto);
            _repo.UpdateEntity(appointment);
            _repo.Save();
        }

        public void Delete(AppointmentDto dto)
        {
            var appointment = _mapper.Map<Appointment>(dto);
            _repo.DeleteEntity(appointment);
            _repo.Save();
        }

        public void Unsubscribe(RegisterForAppointmentDto dto)
        {
            var appointment = _repo.GetEntities(x => x.Id == dto.AppointmentId, includes).FirstOrDefault();

            appointment.AccountsRegistered.Remove(appointment.AccountsRegistered.FirstOrDefault(
                x => x.AccountId == dto.AccountId && x.AppointmentId == dto.AppointmentId
            ));

            _repo.UpdateEntity(appointment);
            _repo.Save();
        }

        public bool IsRegisteredForAppointment(RegisterForAppointmentDto registerForAppointmentDto)
        {
            var appointment = _repo.GetEntities(a => a.Id == registerForAppointmentDto.AppointmentId, includes)
                .FirstOrDefault();

            if (appointment == null) return false;

            return appointment.AccountsRegistered.Any(a => a.AccountId == registerForAppointmentDto.AccountId);
        }
    }
}