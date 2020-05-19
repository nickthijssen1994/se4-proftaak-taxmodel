using backend.Models.DTOs;
using System.Collections.Generic;

namespace backend.Services
{
    public interface IAppointmentService
    {
        AppointmentDto GetById(long id);
        IEnumerable<AppointmentDto> GetAll();
        IEnumerable<AppointmentDto> GetWithinTimeSpan(AppointmentsWithinTimespanDto dto);
        bool RegisterForAppointment(RegisterForAppointmentDto dto);
        void Create(CreateAppointmentDto dto);
        void Update(UpdateAppointmentDto dto);
        void Delete(AppointmentDto  dto);
        void Unsubscribe(RegisterForAppointmentDto dto);
    }
}
