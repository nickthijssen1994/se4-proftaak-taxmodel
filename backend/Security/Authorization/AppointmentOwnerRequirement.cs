using Microsoft.AspNetCore.Authorization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Security.Authorization
{
    public class AppointmentOwnerRequirement : IAuthorizationRequirement
    {
        public long UserId { get; set; }
        public long AppointmentId { get; set; }
        public AppointmentOwnerRequirement(long userId, long appointmentId)
        {
            UserId = userId;
            AppointmentId = appointmentId;
        }
    }
}
