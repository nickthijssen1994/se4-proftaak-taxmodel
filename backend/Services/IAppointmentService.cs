using backend.Models.DTOs;
using System.Collections.Generic;

namespace backend.Services
{
	public interface IAppointmentService
	{
		AppointmentDto GetById(long id);
		IEnumerable<AppointmentDto> GetAll();
		IEnumerable<AppointmentDto> GetWithinTimeSpan(AppointmentsWithinTimespanDto dto);
		bool IsRegisteredForAppointment(RegisterForAppointmentDto dto);
		bool RegisterForAppointment(RegisterForAppointmentDto dto);
		void Unsubscribe(RegisterForAppointmentDto registerForAppointmentDto);
		void Create(CreateAppointmentDto dto);
		void Update(UpdateAppointmentDto dto);
		void Delete(AppointmentDto dto);
	}
}