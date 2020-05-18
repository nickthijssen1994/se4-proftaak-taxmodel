using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace backend.Models
{
    [Table("account")]
    public class Account
    {
        public long Id { get; set; }
        [Required]
        [MaxLength(32, ErrorMessage = "Name must be 32 characters or less.")]
        public string Name { get; set; }
        [Required]
        [MinLength(8, ErrorMessage = "Password must be at least 8 characters.")]
        [MaxLength(32, ErrorMessage = "Password must be 32 characters or less.")]
        public string Password { get; set; }

        public ICollection<Order> Orders { get; }
    }
}