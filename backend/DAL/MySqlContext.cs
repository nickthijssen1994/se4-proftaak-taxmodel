using System;
using backend.Models;
using Microsoft.EntityFrameworkCore;

namespace backend.DAL
{
    public class MySqlContext : DbContext
    {
        public MySqlContext(DbContextOptions<MySqlContext> options) : base(options)
        {
            Database.EnsureCreated();
        }

        public DbSet<Account> Accounts { get; set; }
        public DbSet<Appointment> Appointments { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Example> Tests { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            if (modelBuilder == null) throw new ArgumentNullException(nameof(modelBuilder));
            modelBuilder.Entity<Account>().ToTable("account");
            modelBuilder.Entity<Appointment>().ToTable("appointment");
            modelBuilder.Entity<Order>().ToTable("order");
            modelBuilder.Entity<Example>().ToTable("example");

        modelBuilder.Entity<AppointmentAccount>().HasKey(a => new {a.AccountId, a.AppointmentId});
        modelBuilder.Entity<AppointmentAccount>()
          .HasOne(x => x.Appointment).WithMany(y => y.AccountsRegistered)
          .HasForeignKey(y => y.AppointmentId);

        modelBuilder.Entity<AppointmentAccount>()
          .HasOne(x => x.Account).WithMany(y => y.Appointments)
          .HasForeignKey(y => y.AccountId);

        modelBuilder.Entity<Account>().HasMany(a => a.OrganizedAppointments).WithOne(o => o.Organiser);
        modelBuilder.Entity<Appointment>().HasOne(a => a.Organiser).WithMany(o => o.OrganizedAppointments);
     }
	}
}