using backend.DAL.Repositories;
using backend.Models;
using backend.Models.DTOs;
using backend.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace backend.Controllers
{
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

        [HttpGet("GetInTimeSpan")]
        public ActionResult<IEnumerable<Appointment>> GetAppointmentsInTimeSpan([FromBody] AppointmentByWeekDto dto)
        {
            if (ModelState.IsValid || dto.EndTime <= dto.BeginTime)
            {
                return BadRequest();
            }

            List<Appointment> appointments = _repo.Get<Appointment>(
                a => a.BeginTime >= dto.BeginTime && a.EndTime <= dto.EndTime
                ).ToList();

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
		public IActionResult PutAppointment(long id, [FromBody] AppointmentDto appointment)
		{
            if (appointment == null || id != appointment.Id)
            {
                return BadRequest();
            }

            try
            {
                _service.Update(appointment);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AppointmentExists(id))
                    return NotFound();
                throw;
            }

			return NoContent();
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

		private bool AppointmentExists(long id)
		{
			return _repo.Set.Any(e => e.Id == id);
		}
	}
}
