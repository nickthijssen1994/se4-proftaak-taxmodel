using Microsoft.AspNetCore.Authorization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Security.Authorization
{
    public class AppointmentOwnerRequirement : IAuthorizationRequirement
    {
    }
}
