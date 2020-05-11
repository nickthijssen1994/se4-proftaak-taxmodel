using System;
using System.ComponentModel.DataAnnotations;

namespace backend.Models.DTOs
{
	public class AppointmentByWeekDto
	{
        [Required]
		public DateTime? BeginTime { get; set; }
        [Required]
		public DateTime EndTime { get; set; }
	}
}
