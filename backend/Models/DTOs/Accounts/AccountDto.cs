using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models.DTOs.Accounts
{
    public class AccountDto
    {
        public long Id { get; set; }

        public string Name { get; set; }

        // public ICollection<Order> Orders { get; set; }
    }
}
