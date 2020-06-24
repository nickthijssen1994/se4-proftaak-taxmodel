using System;
using System.Text;
using AutoMapper;
using backend.DAL;
using backend.DAL.Repositories;
using backend.Helpers;
using backend.Models.Mapping;
using backend.Security.Authorization;
using backend.Services;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.IdentityModel.Tokens;

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
            services.AddSingleton<IMailHelper, MailHelper>();
			services.AddControllers();

			/*
			 * Following code based on: https://jasonwatmore.com/post/2019/10/11/aspnet-core-3-jwt-authentication-tutorial-with-example-api
			 */
			// configure strongly typed settings objects
			var appSettingsSection = Configuration.GetSection("Auth");
			services.Configure<AppSettings>(appSettingsSection);

			// Add authentication
			var appSettings = appSettingsSection.Get<AppSettings>();
			var key = Encoding.ASCII.GetBytes(appSettings.Secret);
            services.AddAuthorization(options =>
            {
                options.AddPolicy("IsAppointmentOwner", policy =>
                {
                    policy.Requirements.Add(new AppointmentOwnerRequirement());
                    //policy.RequireAssertion(context =>
                    //context.User.HasClaim(c =>
                    //   c.Type == "Name"));
                });
            });
            services.AddAuthentication(x =>
				{
					x.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
					x.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
				})
				.AddJwtBearer(x =>
				{
					x.RequireHttpsMetadata = false;
					x.SaveToken = true;
					x.TokenValidationParameters = new TokenValidationParameters
					{
						ValidateIssuerSigningKey = true,
						IssuerSigningKey = new SymmetricSecurityKey(key),
						ValidateIssuer = false,
						ValidateAudience = false
					};
				});

            services.AddHttpContextAccessor();
            services.AddSingleton<IAuthorizationHandler, IsAppointmentOwnerAuthorizationHandler>();
		}

		// This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
		public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
		{
			if (env.IsDevelopment()) app.UseDeveloperExceptionPage();

			app.UseCors(MyAllowSpecificOrigins);

			app.UseHttpsRedirection();

			app.UseRouting();

			app.UseAuthentication();

			app.UseAuthorization();

			app.UseEndpoints(endpoints => { endpoints.MapControllers(); });
		}
	}
}