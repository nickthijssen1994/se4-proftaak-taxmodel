using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace backend.Models
{
	[Table("account")]
	public class Account
	{
		public long Id { get; set; }
		[Required]
        [MaxLength(32, ErrorMessage = "Name must be 500 characters or less")]
		public string Name { get; set; }

		//public ICollection<Appointment> Appointments { get; set; }
		public ICollection<Order> Orders { get; set; }
	}
}
