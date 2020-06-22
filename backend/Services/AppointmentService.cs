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
        private readonly AppointmentRepository _repo;
        private readonly AccountRepository accountRepo;
        private readonly IMapper _mapper;

        static readonly Expression<Func<Appointment, object>>[] appointmentIncludes = new Expression<Func<Appointment, object>>[]
        {
            a => a.AccountsRegistered,
            o => o.Organiser
        };

        static readonly Expression<Func<Account, object>>[] accountIncludes = new Expression<Func<Account, object>>[]
        {
            a => a.Appointments,
            o => o.OrganizedAppointments
        };

        public AppointmentService(AppointmentRepository repo, AccountRepository accountRepo, IMapper mapper)
        {
            _mapper = mapper;
            _repo = repo;
            this.accountRepo = accountRepo;
        }

        public AppointmentDto GetById(long id)
        {
            Appointment appointment = _repo.GetEntities(x => x.Id == id, appointmentIncludes).FirstOrDefault();
            return _mapper.Map<AppointmentDto>(appointment);
        }

        public IEnumerable<AppointmentDto> GetAll()
        {
            IEnumerable<Appointment> appointments = _repo.GetEntities(includes: appointmentIncludes);

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
            Appointment appointment = _repo.GetEntities(x => x.Id == dto.AppointmentId, appointmentIncludes).FirstOrDefault();

            AppointmentAccount aa = _mapper.Map<AppointmentAccount>(dto);

            if (IsRegisteredForAppointment(dto) || appointment == null ||
                appointment.AccountsRegistered.Count + 1 > appointment.MaxPeople)
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
            Account organiser = accountRepo.GetEntities(x => x.Id == dto.Organiser.Id, includes:accountIncludes).FirstOrDefault();
            Appointment appointment = _mapper.Map<Appointment>(dto);
            appointment.Organiser = organiser;
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
            Appointment appointment = _repo.GetEntities(x => x.Id == dto.Id, appointmentIncludes).FirstOrDefault();
            _repo.DeleteEntity(appointment);
            _repo.Save();
        }

        public void Unsubscribe(RegisterForAppointmentDto dto)
        {
            Appointment appointment = _repo.GetEntities(x => x.Id == dto.AppointmentId, appointmentIncludes).FirstOrDefault();

            appointment.AccountsRegistered.Remove(appointment.AccountsRegistered.FirstOrDefault(
                x => x.AccountId == dto.AccountId && x.AppointmentId == dto.AppointmentId
            ));

            _repo.UpdateEntity(appointment);
            _repo.Save();
        }

        public bool IsRegisteredForAppointment(RegisterForAppointmentDto registerForAppointmentDto)
        {
            Appointment appointment = _repo.GetEntities(a => a.Id == registerForAppointmentDto.AppointmentId, appointmentIncludes).FirstOrDefault();

            if (appointment == null)
            {
                return false;
            }

            return appointment.AccountsRegistered.Any(a => a.AccountId == registerForAppointmentDto.AccountId);
        }
    }
}
