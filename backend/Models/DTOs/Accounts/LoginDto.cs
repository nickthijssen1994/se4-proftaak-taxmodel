using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models.DTOs.Accounts
{
    public class LoginDto
    {
        [Required]
        public string Name { get; set; }
        [Required]
        public string Password { get; set; }
        public string Token { get; set; }

        public LoginDto(string name, string password)
        {
            Name = name;
            Password = password;
        }
    }
}
