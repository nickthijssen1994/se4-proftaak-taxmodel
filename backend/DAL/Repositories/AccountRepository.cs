using backend.Models;
using Castle.Core.Internal;
using System;
using System.Collections.Generic;
using System.Linq;

namespace backend.DAL.Repositories
{
    public class AccountRepository : GenericRepository<Account>
    {
        public AccountRepository(MySqlContext context) : base(context)
        {
        }

        public IEnumerable<AppointmentAccount> GetAppointments(long id)
        {
            List<AppointmentAccount> appointments = new List<AppointmentAccount>();

            Account account = GetEntityById(id);
            if (!account.Appointments.IsNullOrEmpty())
            {
                appointments = account.Appointments.ToList();
            }

            return appointments;
        }
    }
}