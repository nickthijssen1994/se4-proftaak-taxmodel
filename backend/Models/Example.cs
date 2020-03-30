using System.ComponentModel.DataAnnotations.Schema;

namespace backend.Models
{
    [Table("example")]
    public class Example
    {
        public long Id { get; set; }
        public string Name { get; set; }
    }
}
