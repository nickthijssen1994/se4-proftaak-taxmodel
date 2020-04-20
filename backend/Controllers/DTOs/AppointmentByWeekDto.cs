using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Controllers.DTOs
{
    public class AppointmentByWeekDto
    {
        public long BeginTime { get; set; }
        public long EndTime { get; set; }
    }
}
