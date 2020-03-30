using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace backend.DAL.Repositories
{
    public interface IRepository<TEntity> where TEntity : class
    {
        DbSet<TEntity> Set { get; set; }
        IEnumerable<TEntity> Get<TProperty>(
            Expression<Func<TEntity, bool>> filter = null,
            Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null,
            Expression<Func<TEntity, TProperty>> includes = null);
        TEntity GetByID(object id);
        void Insert(TEntity entity);
        void DeleteById(object id);
        void Delete(TEntity entityToDelete);
        void Update(TEntity entityToUpdate);

        void Save();
    }
}
