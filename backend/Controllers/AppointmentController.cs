using System.Collections.Generic;
using System.Linq;
using backend.DAL.Repositories;
using backend.Models.DTOs;
using backend.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace backend.Controllers
{
	[ApiController]
    [Route("taxbreak/api/[controller]")]
    public class AppointmentController : ControllerBase
    {
        private readonly IAppointmentService _service;

        public AppointmentController(IAppointmentService service)
        {
            _service = service;
        }

        [HttpGet]
        public ActionResult<IEnumerable<AppointmentDto>> GetAppointments()
        {
            return _service.GetAll().ToList();
        }


        [HttpGet("{id}")]
        public ActionResult<AppointmentDto> GetAppointmentById(long id)
        {
            var appointment = _service.GetById(id);

            if (appointment == null)
            {
                return NotFound();
            }

            return appointment;
        }


        [HttpGet("getInTimeSpan")]
        public ActionResult<IEnumerable<AppointmentDto>> GetAppointmentsInTimeSpan(AppointmentsWithinTimespanDto dto)
        {
            if (ModelState.IsValid || dto == null || dto.EndTime <= dto.BeginTime) return BadRequest();

            var appointments = _service.GetWithinTimeSpan(dto).ToList();

            if (appointments == null) return BadRequest();

            return appointments;
        }


        [HttpPut("{id}")]
        public ActionResult<UpdateAppointmentDto> PutAppointment(long id, UpdateAppointmentDto appointment)
        {
            if (!ModelState.IsValid || appointment == null || id != appointment.Id) return BadRequest();

            _service.Update(appointment);

            return appointment;
        }

        [HttpPost("register")]
        public ActionResult<RegisterForAppointmentDto> RegisterForAppointment(RegisterForAppointmentDto dto)
        {
            if (!ModelState.IsValid) return BadRequest();

            _service.RegisterForAppointment(dto);

            return dto;
        }

        [HttpPost]
        public ActionResult<CreateAppointmentDto> PostAppointment(CreateAppointmentDto appointment)
        {
            if (!ModelState.IsValid) return BadRequest();

            _service.Create(appointment);

            return appointment;
        }

        [Authorize(Policy = "IsAppointmentOwner")]
        [HttpDelete("{id}")]
        public ActionResult<AppointmentDto> DeleteAppointment(long id)
        {
            var appointment = _service.GetById(id);
            if (appointment == null) return NotFound();

            _service.Delete(appointment);

            return appointment;
        }

        [HttpPost("unsubscribe")]
        public ActionResult<RegisterForAppointmentDto> Unsubscribe(RegisterForAppointmentDto dto)
        {
            if (!ModelState.IsValid) return BadRequest();

            _service.Unsubscribe(dto);

            return dto;
        }

        [HttpGet("isRegisteredForAppointment/{accountId}/{appointmentId}")]
		public ActionResult<bool> IsRegisteredForAppointment(long accountId, long appointmentId)
		{
			if (!ModelState.IsValid) return BadRequest();

            RegisterForAppointmentDto dto = new RegisterForAppointmentDto
            {
                AccountId = accountId,
                AppointmentId = appointmentId
            };

            return _service.IsRegisteredForAppointment(dto);
		}
    }
}
