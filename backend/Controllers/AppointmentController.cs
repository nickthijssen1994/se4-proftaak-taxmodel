using backend.DAL.Repositories;
using backend.Models;
using backend.Models.DTOs;
using backend.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
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

            _service.RegisterForAppointment(dto);

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

        private bool AppointmentExists(long id)
        {
            return _repo.SetEntity.Any(e => e.Id == id);
        }

        [HttpDelete("unsubscribe")]
        public ActionResult<UnsubscribeFromAppointmentDto> Unsubscribe(UnsubscribeFromAppointmentDto dto)
        {
            _service.Unsubscribe(dto);
            return null;
        }
    }
}
