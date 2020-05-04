using backend.DAL.Repositories;
using backend.Models;
using backend.Models.DTOs;
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

		public AppointmentController(AppointmentRepository repo)
		{
			_repo = repo;
		}

		[HttpGet]
		public ActionResult<IEnumerable<Appointment>> GetAppointments()
		{
			return _repo.Get(null, null, a => a.Organiser).ToList();
		}

		[HttpGet("{id}")]
		public ActionResult<Appointment> GetAppointmentById(int id)
		{
			var appointment = _repo.GetByID(id);

			if (appointment == null) return NotFound();

			return appointment;
			;
		}

        [HttpGet("GetInTimeSpan")]
        public ActionResult<IEnumerable<Appointment>> GetAppointmentsInTimeSpan([FromBody] AppointmentByWeekDto dto)
        {
            if (dto != null || dto.EndTime != null || dto.BeginTime != null || dto.EndTime <= dto.BeginTime)
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
		public IActionResult PutAppointment(int id, [FromForm] Appointment appointment)
		{
			if (id != appointment.Id) return BadRequest();

			_repo.Update(appointment);

			try
			{
				_repo.Save();
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
		public ActionResult<Appointment> PostAppointment(Appointment appointment)
		{
			_repo.Insert(appointment);
			_repo.Save();

			return appointment;
		}

		[HttpDelete("{id}")]
		public ActionResult<Appointment> DeleteAppointment(int id)
		{
			var appointment = _repo.GetByID(id);
			if (appointment == null) return NotFound();

			_repo.Delete(appointment);
			_repo.Save();

			return appointment;
		}

		private bool AppointmentExists(int id)
		{
			return _repo.Set.Any(e => e.Id == id);
		}
	}
}
