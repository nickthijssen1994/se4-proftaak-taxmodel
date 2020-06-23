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

        public virtual IEnumerable<TEntity> GetEntities<TProperty>()
        {
            IQueryable<TEntity> query = SetEntity;
            return query.ToList();
        }

        public virtual IEnumerable<TEntity> GetEntities<TProperty>(
            Expression<Func<TEntity, bool>> filter = null,
            Expression<Func<TEntity, TProperty>>[] includes = null)
        {
            IQueryable<TEntity> query = SetEntity;

            if (filter != null)
            {
                query = query.Where(filter);
            }

            if (includes != null)
            {
                return includes.Aggregate(query, (current, include) => current.Include(include));
            }

            return query.ToList();
        }

        public virtual IEnumerable<TEntity> GetEntitiesWithStringInclude<TProperty>(
          Expression<Func<TEntity, bool>> filter = null,
          string[] includes = null)
        {
            IQueryable<TEntity> query = SetEntity;

            if (filter != null)
            {
                query = query.Where(filter);
            }

            if (includes != null)
            {
                return includes.Aggregate(query, (current, include) => current.Include(include));
            }

            return query.ToList();
        }

        public virtual TEntity GetEntityById(object id)
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
            if (_context.Entry(entityToDelete).State == EntityState.Detached)
            {
                SetEntity.Attach(entityToDelete);
            }

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