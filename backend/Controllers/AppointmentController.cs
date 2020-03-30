using backend.DAL.Repositories;
using backend.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Controllers
{
    [ApiController]
    [Route("taxbreak/api/[controller]")]
    public class AppointmentController : ControllerBase
    {
        AppointmentRepository _repo;

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
            Appointment appointment = _repo.GetByID(id);

            if (appointment == null)
            {
                return NotFound();
            }

            return appointment;
            ;
        }

        [HttpPut("{id}")]
        public IActionResult PutAppointment(int id, [FromForm] Appointment appointment)
        {
            if (id != appointment.Id)
            {
                return BadRequest();
            }

            _repo.Update(appointment);

            try
            {
                _repo.Save();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AppointmentExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        [HttpPost]
        public ActionResult<Appointment> PostAppointment([FromForm] Appointment appointment)
        {
            _repo.Insert(appointment);
            _repo.Save();

            return CreatedAtAction($"Succesfully created the appointment.", new {id = appointment.Id}, appointment);
        }

        [HttpDelete("{id}")]
        public ActionResult<Appointment> DeleteAppointment(int id)
        {
            Appointment appointment = _repo.GetByID(id);
            if (appointment == null)
            {
                return NotFound();
            }

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
