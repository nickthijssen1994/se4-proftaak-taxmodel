using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models
{
    public class Appointment
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public long BeginTime { get; set; }
        public long EndTime { get; set; }

        public string Location { get; set; }
        public Account Organiser { get; set; }
        public ICollection<Order> Orders { get; set; }
        public string Description { get; set; }
    }
}
