using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace backend.Models
{
	[Table("appointment")]
	public class Appointment
	{
		public long Id { get; set; }
		[Required]
		public string Title { get; set; }
		[Required]
		public DateTime BeginTime { get; set; }
		[Required]
		public DateTime EndTime { get; set; }
		[Required]
		public string Location { get; set; }
		[Required]
		public Account Organiser { get; set; }
		public ICollection<Order> Orders { get; set; }
		public string Description { get; set; }
	}
}

