using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Controllers.DTOs
{
    public class AppointmentByWeekDto
    {
        public DateTime BeginTime { get; set; }
        public DateTime EndTime { get; set; }
    }
}
