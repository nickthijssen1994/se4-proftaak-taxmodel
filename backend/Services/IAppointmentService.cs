using backend.Models.DTOs;
using System.Collections.Generic;

namespace backend.Services
{
    public interface IAppointmentService
    {
        AppointmentDto GetById(long id);
        IEnumerable<AppointmentDto> GetAll();
        void Create(CreateAppointmentDto dto);
        void Update(AppointmentDto dto);
        void Delete();

    }
}
