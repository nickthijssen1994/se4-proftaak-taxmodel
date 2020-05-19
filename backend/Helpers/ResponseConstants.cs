using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Helpers
{
    public static class ResponseConstants
    {
        // General responses.
        public static readonly string INVALID_INPUT = "Invalid input.";

        // Registration responses.
        public static readonly string EMAIL_TAKEN = "This email is already in use.";
        public static readonly string USERNAME_TAKEN = "This username is already taken.";
        public static readonly string PASSWORD_MISSING_CAPITAL = "Password must contain at least one capital.";
        public static readonly string PASSWORD_MISSING_NUMBER = "Password must contain at least one number.";

        // Login responses.
        public static readonly string INVALID_CREDENTIALS = "Username and password do not match.";
    }
}
