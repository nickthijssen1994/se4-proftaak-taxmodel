using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace backend.Models
{
	[Table("order")]
	public class Order
	{
		public long Id { get; set; }
		[Required]
		public string Description { get; set; }
	}
}