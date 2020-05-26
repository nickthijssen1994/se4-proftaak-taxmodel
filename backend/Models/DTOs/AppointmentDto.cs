using backend.Models.DTOs.Accounts;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace backend.Models.DTOs
{
    public class AppointmentDto
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public DateTime? BeginTime { get; set; }
        public DateTime? EndTime { get; set; }
        public string Location { get; set; }
        public string Type { get; set; }
        public int MaxPeople { get; set; }
        public int MinPeople { get; set; }
        public AccountDto Organiser { get; set; }
        public ICollection<Order> Orders { get; }
        public string Description { get; set; }
    }
}
