namespace backend.Helpers
{
	public static class ResponseConstants
	{
		// General responses.
		public const string InvalidInput = "Invalid input.";

		// Registration responses.
		public const string EmailTaken = "This email is already in use.";
		public const string UsernameTaken = "This username is already taken.";
		public const string PasswordMissingCapital = "Password must contain at least one capital.";
		public const string PasswordMissingNumber = "Password must contain at least one number.";

		// Login responses.
		public const string InvalidCredentials = "Username and password do not match.";
	}
}
