using backend.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.DAL
{
    public class MySqlContext : DbContext
    {
      
        public MySqlContext(DbContextOptions<MySqlContext> options) : base(options)
        {
        }
     

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Appointment>().HasOne(o => o.Organiser);
  
              
            //modelBuilder.Entity<Appointment>().HasOne(a => a.Organiser).WithMany(a => a.Appointments);
            //modelBuilder.Entity<Account>().HasMany(a => a.Appointments).WithOne(o => o.Organiser);
            
        }

        public DbSet<Account> Accounts { get; set; }
        public DbSet<Appointment> Appointments { get; set; }
        public DbSet<Order> Orders { get; set; }
    }
}
