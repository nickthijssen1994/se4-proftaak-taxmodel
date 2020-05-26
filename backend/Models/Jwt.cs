using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models
{
    public class Jwt
    {
        public string Token { get; set; }

        public Jwt(string token)
        {
            Token = token;
        }
    }
}
