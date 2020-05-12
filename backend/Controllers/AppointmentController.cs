using System;
using backend.DAL.Repositories;
using backend.Models;
using Microsoft.AspNetCore.Mvc;
using System;
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
			return _repo.GetEntities(null, null, a => a.Organiser).ToList();
		}


		[HttpGet("{id}")]
		public ActionResult<Appointment> GetAppointmentById(long id)
		{
			var appointment = _repo.GetEntityByID(id);

			if (appointment == null) return NotFound();

            return appointment;
        }

		[HttpPut("{id}")]
		public ActionResult<Appointment> PutAppointment(long id, Appointment appointment)
		{
			if (appointment == null) throw new ArgumentNullException(nameof(appointment));
			if (id != appointment.Id) return BadRequest();
			_repo.UpdateEntity(appointment);
			_repo.Save();
			return appointment;
		}

		[HttpPost]
		public ActionResult<Appointment> PostAppointment(Appointment appointment)
		{
			if (!ModelState.IsValid)
			{
				return BadRequest();
			}

			_repo.InsertEntity(appointment);
			_repo.Save();

			return appointment;
		}

		[HttpDelete("{id}")]
		public ActionResult<Appointment> DeleteAppointment(long id)
		{
			var appointment = _repo.GetEntityByID(id);
			if (appointment == null) return NotFound();

			_repo.DeleteEntity(appointment);
			_repo.Save();

			return appointment;
		}

		private bool AppointmentExists(long id)
		{
			return _repo.SetEntity.Any(e => e.Id == id);
		}
	}
}
