using backend.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.DAL.Repositories
{
    public class AppointmentRepository : GenericRepository<Appointment>
    {
        public AppointmentRepository(MySqlContext context) : base(context)
        {
        }
    }
}
