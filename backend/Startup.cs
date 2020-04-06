using System;
using backend.DAL;
using backend.DAL.Repositories;
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
		public Startup(IConfiguration configuration)
		{
			Configuration = configuration;
		}

		public IConfiguration Configuration { get; }

		// This method gets called by the runtime. Use this method to add services to the container.
		public void ConfigureServices(IServiceCollection services)
		{
			if (Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT") == "Production")
				services.AddDbContext<MySqlContext>(options =>
				{
					options.UseMySql(Configuration.GetConnectionString("DefaultConnection"));
					options.UseLoggerFactory(LoggerFactory.Create(builder => { builder.AddConsole(); }));
				});
			else
				services.AddDbContext<MySqlContext>(options =>
				{
					options.UseInMemoryDatabase("InMemoryDatabase");
					options.UseLoggerFactory(LoggerFactory.Create(builder => { builder.AddConsole(); }));
				});

			services.AddTransient<ExampleRepository>();
			services.AddTransient<AppointmentRepository>();
			services.AddControllers();
		}

		// This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
		public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
		{
			if (env.IsDevelopment()) app.UseDeveloperExceptionPage();

			app.UseCors();

			app.UseHttpsRedirection();

			app.UseRouting();

			app.UseAuthorization();

			app.UseEndpoints(endpoints => { endpoints.MapControllers(); });
		}
	}
}
