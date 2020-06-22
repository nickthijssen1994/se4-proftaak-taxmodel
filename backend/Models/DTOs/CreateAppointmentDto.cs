using System;
using System.ComponentModel.DataAnnotations;

namespace backend.Models.DTOs
{
    public class CreateAppointmentDto
    {
        [Required]
        [MaxLength(32, ErrorMessage = "Title must be 32 characters or less.")]
        [MinLength(1, ErrorMessage = "Title must be at least 1 character.")]
        public string Title { get; set; }

        [Required]
        [MaxLength(32, ErrorMessage = "Location must be 32 characters or less.")]
        [MinLength(1, ErrorMessage = "Location must be at least 1 character.")]
        public string Location { get; set; }

        [Required] public DateTime? BeginTime { get; set; }
        [Required] public DateTime? EndTime { get; set; }
        [Required] public int MinPeople { get; set; }
        [Required] public int MaxPeople { get; set; }

        // public long Organiser { get; set; }

        [MaxLength(500, ErrorMessage = "Description must be 500 characters or less.")]
        public string Description { get; set; }

        public string Type { get; set; }
    }
}