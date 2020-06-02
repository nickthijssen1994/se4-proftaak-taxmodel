using System.ComponentModel.DataAnnotations.Schema;

namespace backend.Models
{
	[Table("account_appointment")]
	public class AppointmentAccount
	{
		public long AppointmentId { get; set; }
		public Appointment Appointment { get; set; }
		public long AccountId { get; set; }
		public Account Account { get; set; }
	}
}
