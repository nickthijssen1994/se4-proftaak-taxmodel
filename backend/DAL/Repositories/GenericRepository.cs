using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using Microsoft.EntityFrameworkCore;

namespace backend.DAL.Repositories
{
	public class GenericRepository<TEntity> : IRepository<TEntity> where TEntity : class
	{
		private readonly MySqlContext _context;

		public GenericRepository(MySqlContext context)
		{
			_context = context ?? throw new ArgumentNullException(nameof(context));
			Set = context.Set<TEntity>();
		}

		public DbSet<TEntity> Set { get; set; }

		public virtual IEnumerable<TEntity> Get<TProperty>(
			Expression<Func<TEntity, bool>> filter = null,
			Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null,
			Expression<Func<TEntity, TProperty>> includes = null)
		{
			IQueryable<TEntity> query = Set;

			if (filter != null) query = query.Where(filter);
			if (includes != null)
			{
				if (orderBy != null) return orderBy(query.Include(includes));

				return query.Include(includes);
			}

			if (orderBy != null)
				return orderBy(query).ToList();
			return query.ToList();
		}

		public virtual TEntity GetByID(object id)
		{
			return Set.Find(id);
		}

		public virtual void Insert(TEntity entity)
		{
			Set.Add(entity);
		}

		public virtual void DeleteById(object id)
		{
			var entityToDelete = Set.Find(id);
			Delete(entityToDelete);
		}

		public virtual void Delete(TEntity entityToDelete)
		{
			if (_context.Entry(entityToDelete).State == EntityState.Detached) Set.Attach(entityToDelete);
			Set.Remove(entityToDelete);
		}

		public virtual void Update(TEntity entityToUpdate)
		{
			Set.Attach(entityToUpdate);
			_context.Entry(entityToUpdate).State = EntityState.Modified;
		}

		public void Save()
		{
			_context.SaveChanges();
		}
	}
}
