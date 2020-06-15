using Microsoft.AspNetCore.Authorization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace backend.Security.Authorization
{
    public class IsAppointmentOwnerAuthorizationHandler : AuthorizationHandler<AppointmentOwnerRequirement>
    {
        protected override Task HandleRequirementAsync(AuthorizationHandlerContext context, AppointmentOwnerRequirement requirement)
        {
            if(!context.User.HasClaim(c => c.Type == ClaimTypes.Name))
            {
                return Task.FromResult(0);
            }


            var name = context.User.FindFirst(c => c.Type == ClaimTypes.Name).Value;

            if (context.Resource is AuthorizationFilterContext mvcContext)
            {
                // Examine MVC-specific things like routing data.
            }

            if (name == )
            {

            }

            return Task.FromResult(0);
        }
    }
}
