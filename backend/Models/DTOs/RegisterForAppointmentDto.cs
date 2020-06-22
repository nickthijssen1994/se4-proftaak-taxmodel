using System.ComponentModel.DataAnnotations;

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