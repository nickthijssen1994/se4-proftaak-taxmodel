using backend.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using DbContext = Microsoft.EntityFrameworkCore.DbContext;

namespace backend.DAL
{
    public class MySqlContext : DbContext
    {
        public MySqlContext(DbContextOptions<MySqlContext> options) : base(options)
        {
            Database.EnsureCreated();
        }
        
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Account>().ToTable("account");
            modelBuilder.Entity<Appointment>().ToTable("appointment");
            modelBuilder.Entity<Order>().ToTable("order");
            modelBuilder.Entity<Example>().ToTable("example");
        }

        public Microsoft.EntityFrameworkCore.DbSet<Account> Accounts { get; set; }
        public Microsoft.EntityFrameworkCore.DbSet<Appointment> Appointments { get; set; }
        public Microsoft.EntityFrameworkCore.DbSet<Order> Orders { get; set; }
        public Microsoft.EntityFrameworkCore.DbSet<Example> Tests { get; set; }
    }
}
