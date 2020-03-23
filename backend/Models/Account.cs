using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models
{
    public class Account
    {
        public long Id { get; set; }
        public string Name { get; set; }
        //public ICollection<Appointment> Appointments { get; set; }
        public ICollection<Order> Orders { get; set; }
    }
}
