using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace backend.Models.DTOs
{
    public class UpdateAppointmentDto
    {
        public long Id { get; set; }

        [Required]
        [MaxLength(50, ErrorMessage = "Title must be 50 characters or less.")]
        [MinLength(1, ErrorMessage = "Title must be at least 1 character.")]
        public string Title { get; set; }

        [Required] public DateTime? BeginTime { get; set; }
        [Required] public DateTime? EndTime { get; set; }

        [Required]
        [MaxLength(50, ErrorMessage = "Location must be 50 characters or less.")]
        [MinLength(1, ErrorMessage = "Location must be at least 1 character.")]
        public string Location { get; set; }

        [Required] public int MinPeople { get; set; }
        [Required] public int MaxPeople { get; set; }

        //[Required]
        public Account Organiser { get; set; }
        public ICollection<Order> Orders { get; }

        [MaxLength(500, ErrorMessage = "Description must be 500 characters or less.")]
        public string Description { get; set; }

        public string Type { get; set; }
    }
}