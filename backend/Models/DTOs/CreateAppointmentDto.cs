using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models.DTOs
{
    public class CreateAppointmentDto
    {
        [Required]
        [MaxLength(50, ErrorMessage = "Title must be 50 characters or less."), 
            MinLength(5, ErrorMessage = "Title must be at least 5 characters.")]
        public string Title { get; set; }

        [Required]
        [MaxLength(32, ErrorMessage = "Location must be 32 characters or less."),
         MinLength(5, ErrorMessage = "Location must be at least 5 characters.")]
        public string Location { get; set; }

        [Required]
        public DateTime? BeginTime { get; set; }

        [Required]
        public DateTime? EndTime { get; set; }

        [Required]
        public int MinPeople { get; set; }
        [Required]
        public int MaxPeople { get; set; }
  
        public long Organiser { get; set; }

        [MaxLength(250, ErrorMessage = "Description must be 250 characters or less.")]
        public string Description { get; set; }
    }
}
