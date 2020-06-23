namespace backend.Models.DTOs.Accounts
{
    public class AccountDto
    {
        public long Id { get; set; }
        public string Email { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }

        // public ICollection<Order> Orders { get; set; }
    }
}