using AutoMapper;
using backend.DAL.Repositories;
using backend.Models;
using backend.Models.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace backend.Services
{
    //TODO: Look at automatically loading the foreign properties instead of using the conveluted include
    public class AppointmentService : IAppointmentService
    {
        private readonly AppointmentRepository _repo;
        private readonly IMapper _mapper;

       static Expression<Func<Appointment, object>>[] includes = new Expression<Func<Appointment, object>>[]
       {
                a => a.AccountsRegistered,
                o => o.Organiser
       };
        public AppointmentService(AppointmentRepository repo, IMapper mapper)
        {
            _mapper = mapper;
            _repo = repo;
        }


        public AppointmentDto GetById(long id)
        {
            Appointment appointment  = _repo.GetEntities(x => x.Id == id, includes).FirstOrDefault();
            return _mapper.Map<AppointmentDto>(appointment);
        }

        public IEnumerable<AppointmentDto> GetAll()
        {
            IEnumerable<Appointment> appointments = _repo.GetEntities(includes: includes);

            return _mapper.Map<IEnumerable<AppointmentDto>>(appointments);
        }
        public IEnumerable<AppointmentDto> GetWithinTimeSpan(AppointmentsWithinTimespanDto dto)
        {
            List<Appointment> appointments = _repo.GetEntities<Appointment>(
                a => a.BeginTime >= dto.BeginTime && a.EndTime <= dto.EndTime
                ).ToList();

            return _mapper.Map<IEnumerable<AppointmentDto>>(appointments);
        }

        public bool RegisterForAppointment(RegisterForAppointmentDto dto)
        {
            Appointment appointment = _repo.GetEntities(x=> x.Id == dto.AppointmentId, includes).FirstOrDefault();

            
            AppointmentAccount aa = _mapper.Map<AppointmentAccount>(dto);

            if (IsRegisteredForAppointment(dto) || appointment == null || appointment.AccountsRegistered.Count + 1 > appointment.MaxPeople)
            {
                return false;
            }
            else
            {
                appointment.AccountsRegistered.Add(aa);

                _repo.UpdateEntity(appointment);
                _repo.Save();
                return true;
            }
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

        public void Unsubscribe(RegisterForAppointmentDto dto)
        {
            Appointment appointment = _repo.GetEntities(x => x.Id == dto.AppointmentId, includes).FirstOrDefault();

            appointment.AccountsRegistered.Remove(appointment.AccountsRegistered.FirstOrDefault(
               x => x.AccountId == dto.AccountId && x.AppointmentId == dto.AppointmentId
               ));

            _repo.UpdateEntity(appointment);
            _repo.Save();
        }

        public bool IsRegisteredForAppointment(RegisterForAppointmentDto dto)
        {
            Appointment account = _repo.GetEntityById(dto.AppointmentId);

            if (account == null)
            {
                return false;
            }

            return account.AccountsRegistered.Any(a => a.AccountId == dto.AccountId);
        }
    }
}
