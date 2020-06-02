using System.Collections.Generic;
using System.Linq;
using backend.DAL.Repositories;
using backend.Models.DTOs;
using backend.Services;
using Microsoft.AspNetCore.Mvc;

namespace backend.Controllers
{
	//[Authorize]
	[ApiController]
	[Route("taxbreak/api/[controller]")]
	public class AppointmentController : ControllerBase
	{
		private readonly AppointmentRepository _repo;
		private readonly IAppointmentService _service;

		public AppointmentController(AppointmentRepository repo, IAppointmentService service)
		{
			_repo = repo;
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
			if (ModelState.IsValid || dto == null || dto.EndTime <= dto.BeginTime)
			{
				return BadRequest();
			}

			List<AppointmentDto> appointments = _service.GetWithinTimeSpan(dto).ToList();

			if (appointments == null)
			{
				return BadRequest();
			}
			else
			{
				return appointments;
			}
		}

		[HttpPut("{id}")]
		public ActionResult<UpdateAppointmentDto> PutAppointment(long id, UpdateAppointmentDto appointment)
		{
			if (!ModelState.IsValid || appointment == null || id != appointment.Id)
			{
				return BadRequest();
			}

			_service.Update(appointment);

			return appointment;
		}

		[HttpPost("register")]
		public ActionResult<RegisterForAppointmentDto> RegisterForAppointment(RegisterForAppointmentDto dto)
		{
			if (!ModelState.IsValid)
			{
				return BadRequest();
			}

			bool resultSuccess = _service.RegisterForAppointment(dto);

			if (!resultSuccess)
			{
				//TODO: Return a more useful error indicating
				return Conflict();
			}

			return dto;
		}

		[HttpGet("isRegisteredForAppointment")]
		public ActionResult<bool> IsRegisteredForAppointment(RegisterForAppointmentDto dto)
		{
			if (!ModelState.IsValid)
			{
				return BadRequest();
			}

			return _service.IsRegisteredForAppointment(dto);
		}

		[HttpDelete("unsubscribe")]
		public ActionResult<RegisterForAppointmentDto> Unsubscribe(RegisterForAppointmentDto dto)
		{
			if (!ModelState.IsValid)
			{
				return BadRequest();
			}

			_service.Unsubscribe(dto);

			return dto;
		}

		[HttpPost]
		public ActionResult<CreateAppointmentDto> PostAppointment(CreateAppointmentDto appointment)
		{
			if (!ModelState.IsValid)
			{
				return BadRequest();
			}

			_service.Create(appointment);

			return appointment;
		}

		[HttpDelete("{id}")]
		public ActionResult<AppointmentDto> DeleteAppointment(long id)
		{
			var appointment = _service.GetById(id);
			if (appointment == null)
			{
				return NotFound();
			}

			_service.Delete(appointment);

			return appointment;
		}
	}
}