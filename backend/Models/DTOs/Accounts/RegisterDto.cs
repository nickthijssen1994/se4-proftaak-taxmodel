using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models.DTOs.Accounts
{
    //TODO: Needs more validation 
    public class RegisterDto
    {
        [Required]
        public string Email { get; set; }
        [Required]
        [MinLength(5, ErrorMessage = "Name must be at least 5 characters.")]
        [MaxLength(32, ErrorMessage = "Name must be 32 characters or less.")]
        public string Name { get; set; }
        [Required]
        [MinLength(8, ErrorMessage = "Password must be at least 8 characters.")]
        [MaxLength(32, ErrorMessage = "Password must be 32 characters or less.")]
        public string Password { get; set; }
    }
}
