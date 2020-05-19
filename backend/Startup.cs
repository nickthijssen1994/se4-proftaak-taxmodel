using System;
using AutoMapper;
using backend.DAL;
using backend.DAL.Repositories;
using backend.Models.Mapping;
using backend.Services;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;

namespace backend
{
    public class Startup
    {
        readonly string MyAllowSpecificOrigins = "_myAllowSpecificOrigins";

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddCors(options =>
            {
                options.AddPolicy(name: MyAllowSpecificOrigins,
                    builder =>
                    {
                        builder.WithOrigins("*").AllowAnyHeader()
                            .AllowAnyMethod();
                    });
            });

            if (Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT") == "Production")
                services.AddDbContext<MySqlContext>(options =>
                {
                    options.UseMySql(Configuration.GetConnectionString("ProductionDatabaseConnection"));
                    options.UseLoggerFactory(LoggerFactory.Create(builder => { builder.AddConsole(); }));
                });
            else if (Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT") == "Development")
                services.AddDbContext<MySqlContext>(options =>
                {
                    options.UseInMemoryDatabase("InMemoryDatabase");
                    options.UseLoggerFactory(LoggerFactory.Create(builder => { builder.AddConsole(); }));
                });


            services.AddAutoMapper(config => config.AddProfile<AutoMappingProfile>(), typeof(Startup));
            services.AddTransient<ExampleRepository>();
            services.AddTransient<IAppointmentService, AppointmentService>();
            services.AddTransient<AppointmentRepository>();

            services.AddTransient<IAccountService, AccountService>();
            services.AddTransient<AccountRepository>();
            services.AddControllers();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment()) app.UseDeveloperExceptionPage();

            app.UseCors(MyAllowSpecificOrigins);

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints => { endpoints.MapControllers(); });
        }
    }
}
