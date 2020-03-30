using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models
{
    [Table("order")]
    public class Order
    {
        public long Id { get; set; }
        public string Description { get; set; }

    }
}
