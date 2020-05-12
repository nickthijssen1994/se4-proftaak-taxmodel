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
			SetEntity = context.Set<TEntity>();
		}

		public DbSet<TEntity> SetEntity { get; set; }

		public virtual IEnumerable<TEntity> GetEntities<TProperty>(
			Expression<Func<TEntity, bool>> filter = null,
			Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null,
			Expression<Func<TEntity, TProperty>> includes = null)
		{
			IQueryable<TEntity> query = SetEntity;

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

		public virtual TEntity GetEntityByID(object id)
		{
			return SetEntity.Find(id);
		}

		public virtual void InsertEntity(TEntity entity)
		{
			SetEntity.Add(entity);
		}

		public virtual void DeleteEntityById(object id)
		{
			var entityToDelete = SetEntity.Find(id);
			DeleteEntity(entityToDelete);
		}

		public virtual void DeleteEntity(TEntity entityToDelete)
		{
			if (_context.Entry(entityToDelete).State == EntityState.Detached) SetEntity.Attach(entityToDelete);
			SetEntity.Remove(entityToDelete);
		}

		public virtual void UpdateEntity(TEntity entityToUpdate)
		{
			SetEntity.Attach(entityToUpdate);
			_context.Entry(entityToUpdate).State = EntityState.Modified;
		}

		public void Save()
		{
			_context.SaveChanges();
		}
	}
}
