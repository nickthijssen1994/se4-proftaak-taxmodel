using backend.Models;

namespace backend.DAL.Repositories
{
    public class AccountRepository : GenericRepository<Account>
    {
        public AccountRepository(MySqlContext context) : base(context)
        {

        }
    }
}
