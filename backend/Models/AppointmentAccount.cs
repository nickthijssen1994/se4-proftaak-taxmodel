using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

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
