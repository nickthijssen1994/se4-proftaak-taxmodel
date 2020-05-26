using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models.DTOs.Accounts
{
    public class Registration
    {
        public string Email { get; set; }
        public string Name { get; set; }
        public string Token { get; set; }

        public Registration(string email, string name, string token)
        {
            Email = email;
            Name = name;
            Token = token;
        }
    }
}
