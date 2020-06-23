using backend.Models.DTOs.Accounts;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace backend.Models.DTOs
{
	public class CreateAppointmentDto : IValidatableObject
	{
        [Required]
        [MaxLength(32, ErrorMessage = "Title must be 32 characters or less."),
         MinLength(1, ErrorMessage = "Title must be at least 1 character.")]
        public string Title { get; set; }

        [Required]
        [MaxLength(32, ErrorMessage = "Location must be 32 characters or less.")]
        [MinLength(1, ErrorMessage = "Location must be at least 1 character.")]
        public string Location { get; set; }

        [Required] public DateTime? BeginTime { get; set; }
        [Required] public DateTime? EndTime { get; set; }
        [Required] public int MinPeople { get; set; }
        [Required] public int MaxPeople { get; set; }

        public long Organiser { get; set; }

        [MaxLength(500, ErrorMessage = "Description must be 500 characters or less.")]
        public string Description { get; set; }
    
		    public string Type { get; set; }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            List<ValidationResult> results = new List<ValidationResult>();

            int beginHour = BeginTime.Value.Hour;
            int endHour = EndTime.Value.Hour;

            if (beginHour < 12 || beginHour > 17)
            {
                results.Add(new ValidationResult("Begin time must be between 12:00 and 17:00", new[] { "BeginTime" }));
            }
            if(endHour > 17)
            {
                results.Add(new ValidationResult("End time must be between 12:00 and 17:00", new[] { "EndTime" }));
            }

            if (BeginTime < DateTime.Now)
            {
                results.Add(new ValidationResult("Selected time must be in the future", new[] { "BeginTime" }));
            }

            if (EndTime <= BeginTime)
            {
                results.Add(new ValidationResult("End time must be greater that start time", new[] { "EndTime" }));
            }

            TimeSpan differenceCurrentAndBegin = BeginTime.Value.Subtract(DateTime.Now);

            if(differenceCurrentAndBegin.Days <= 0 && differenceCurrentAndBegin.TotalMinutes <= 60)
            {
                results.Add(new ValidationResult("The current time must be farther than an hour away from the begin time", new[] { "BeginTime" }));
            }
            if(differenceCurrentAndBegin.TotalDays > 60)
            {
                results.Add(new ValidationResult("The time must be less than 60 days from the now", new[] { "BeginTime" }));
            }

            return results;
        }
    }
}
