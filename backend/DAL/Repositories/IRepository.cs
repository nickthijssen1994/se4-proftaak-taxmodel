using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using Microsoft.EntityFrameworkCore;

namespace backend.DAL.Repositories
{
	public interface IRepository<TEntity> where TEntity : class
	{
		DbSet<TEntity> SetEntity { get; set; }

		IEnumerable<TEntity> GetEntities<TProperty>(
			Expression<Func<TEntity, bool>> filter = null,
			Expression<Func<TEntity, TProperty>>[] includes = null);

		TEntity GetEntityById(object id);
		void InsertEntity(TEntity entity);
		void DeleteEntityById(object id);
		void DeleteEntity(TEntity entityToDelete);
		void UpdateEntity(TEntity entityToUpdate);
		void Save();
	}
}
