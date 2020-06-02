using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace backend.Models
{
	[Table("account")]
	public class Account
	{
		public long Id { get; set; }
		public string Email { get; set; }
		public string Name { get; set; }
		public string Password { get; set; }
		public ICollection<AppointmentAccount> Appointments { get; set; }
		public ICollection<Order> Orders { get; }
	}
}
