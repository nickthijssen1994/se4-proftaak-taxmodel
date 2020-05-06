using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace backend.Models
{
    [Table("appointment")]
    public class Appointment
    {
        public long Id { get; set; }
        [Required]
        [MaxLength(50, ErrorMessage = "Title must be 32 characters or less."), MinLength(5, ErrorMessage = "Title must be at least 5 characters.")]
        public string Title { get; set; }
        [Required]
        public DateTime BeginTime { get; set; }
        [Required]
        public DateTime EndTime { get; set; }
        [Required]
        [MaxLength(250, ErrorMessage = "Location must be 32 characters or less."), MinLength(5, ErrorMessage = "Location must be at least 5 characters.")]
        public string Location { get; set; }
        public int MinPeople { get; set; }
        public int MaxPeople { get; set; }
        [Required]
        public Account Organiser { get; set; }
        public ICollection<Order> Orders { get; set; }
        [MaxLength(250, ErrorMessage = "Description must be 500 characters or less.")]
        public string Description { get; set; }
    }
}