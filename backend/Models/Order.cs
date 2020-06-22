using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace backend.Models
{
    [Table("order")]
    public class Order
    {
        public long Id { get; set; }

        [Required]
        [MaxLength(500, ErrorMessage = "Description must be 500 characters or less")]
        public string Description { get; set; }
    }
}