using System.ComponentModel.DataAnnotations;

namespace backend.Models.DTOs.Accounts
{
    //TODO: Needs more validation 
    public class RegisterDto
    {
        [Required] public string Email { get; set; }

        [Required]
        [MinLength(4, ErrorMessage = "Name must be at least 5 characters.")]
        [MaxLength(32, ErrorMessage = "Name must be 32 characters or less.")]
        public string Name { get; set; }

        [Required]
        [MinLength(4, ErrorMessage = "Password must be at least 8 characters.")]
        [MaxLength(32, ErrorMessage = "Password must be 32 characters or less.")]
        public string Password { get; set; }
    }
}