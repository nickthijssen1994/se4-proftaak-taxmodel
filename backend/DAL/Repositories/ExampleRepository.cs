using backend.Models;

namespace backend.DAL.Repositories
{
    public class ExampleRepository: GenericRepository<Example>
    {
        public ExampleRepository(MySqlContext context) : base(context)
        {
        }
    }
}
