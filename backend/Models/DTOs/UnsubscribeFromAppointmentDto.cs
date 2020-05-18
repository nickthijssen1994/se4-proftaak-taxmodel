using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models.DTOs
{
    public class UnsubscribeFromAppointmentDto
    {
        public long AppointmentId { get; set; }
        public long AccountId { get; set; }
    }
}
