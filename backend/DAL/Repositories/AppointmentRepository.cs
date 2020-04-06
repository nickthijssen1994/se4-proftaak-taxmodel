using backend.Models;

namespace backend.DAL.Repositories
{
	public class AppointmentRepository : GenericRepository<Appointment>
	{
		public AppointmentRepository(MySqlContext context) : base(context)
		{
		}
	}
}