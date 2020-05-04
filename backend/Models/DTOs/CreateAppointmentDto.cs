using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models.DTOs
{
    public class CreateAppointmentDto
    {
        public string Title { get; set; }
        public DateTime BeginTime { get; set; }
        public DateTime EndTime { get; set; }
        public string Location { get; set; }
        public long OrganiserId { get; set; }

        public string Description { get; set; }
    }
}
