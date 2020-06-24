using backend.Models;
using backend.Models.DTOs.Accounts;
using backend.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace backend.Security.Authorization
{
    public class IsAppointmentOwnerAuthorizationHandler : AuthorizationHandler<AppointmentOwnerRequirement>
    {
        readonly IAppointmentService service;
        readonly IHttpContextAccessor httpContext;
        public IsAppointmentOwnerAuthorizationHandler(IAppointmentService service, IHttpContextAccessor httpContext)
        {
            this.service = service;
            this.httpContext = httpContext;
        }
        protected override Task HandleRequirementAsync(AuthorizationHandlerContext context, AppointmentOwnerRequirement requirement)
        {
            if(!context.User.HasClaim(c => c.Type == ClaimTypes.Name))
            {
                return Task.FromResult(0);
            }

            string name = context.User.FindFirst(c => c.Type == ClaimTypes.Name).Value;

            if (name != null)
            {
                context.Fail();
            }

            long appointmentId = Convert.ToInt64(httpContext.HttpContext.Request.RouteValues["id"]);
 
            AccountDto organiser = service.GetById(appointmentId).Organiser;

            if (organiser == null || organiser.Name != name)
            {
                context.Fail();
            }
            else
            {
                context.Succeed(requirement);
            }

            return Task.CompletedTask;
        }
    }
}
