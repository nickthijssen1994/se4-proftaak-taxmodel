using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Helpers
{
    public interface IMailHelper
    {
        Task SetUpRegisterReminderMail(string reciever, DateTime? appointmentDate, string location);
        Task SetUpReservationReminderMail(string organiser, DateTime? appointmentDate, string location);
    }
}
