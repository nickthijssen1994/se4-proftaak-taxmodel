using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models.DTOs
{
    public class RegisterForAppointmentDto
    {
        [Range(1, long.MaxValue, ErrorMessage = "Only positive number allowed")]
        public long AccountId { get; set; }
        [Range(1, long.MaxValue, ErrorMessage = "Only positive number allowed")]
        public long AppointmentId { get; set; }
    }
}
