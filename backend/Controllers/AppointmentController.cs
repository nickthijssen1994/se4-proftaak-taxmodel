using backend.DAL.Repositories;
using backend.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Diagnostics;
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
		public ActionResult<Appointment> GetAppointmentById(long id)
		{
			var appointment = _repo.GetByID(id);

			if (appointment == null) return NotFound();

			return appointment;
		}

		[HttpPut("{id}")]
		public ActionResult<Appointment> PutAppointment(long id, Appointment appointment)
		{
			if (id != appointment.Id) return BadRequest();
			
			// try
			// {
				_repo.Update(appointment);
				_repo.Save();
				return _repo.GetByID(id);
			// }
			// catch (DbUpdateConcurrencyException)
			// {
			// 	if (!AppointmentExists(id))
			// 		return NotFound();
			// 	throw;
			// }
		}

		[HttpPost]
		public ActionResult<Appointment> PostAppointment(Appointment appointment)
		{
			if (ModelState.IsValid)
			{
				_repo.Insert(appointment);
				_repo.Save();

				return appointment;
			}
			else
			{
				throw new System.Web.Http.HttpResponseException(System.Net.HttpStatusCode.BadRequest);
			}
		}

		[HttpDelete("{id}")]
		public ActionResult<Appointment> DeleteAppointment(long id)
		{
			var appointment = _repo.GetByID(id);
			if (appointment == null) return NotFound();

			_repo.Delete(appointment);
			_repo.Save();

			return appointment;
		}

		private bool AppointmentExists(long id)
		{
			return _repo.Set.Any(e => e.Id == id);
		}
	}
}
